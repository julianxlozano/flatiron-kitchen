class Recipe < ApplicationRecord
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients
    accepts_nested_attributes_for :ingredients # reject_if: :blank?

    validates :name, presence: true

   # def blank?

    #end
end
