class Ingredient < ApplicationRecord
  has_many :user_dietaries
  has_many :recipe_dietaries

  has_many :users, through: :user_ingredients
  has_many :recipes , through: :recipe_ingredients

  validates :name, presence: true, length: { minimum: 2}
end
