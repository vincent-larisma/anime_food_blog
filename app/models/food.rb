class Food < ApplicationRecord
    validates :food_title,:anime_name,:anime_food_recipe, presence: true
end
