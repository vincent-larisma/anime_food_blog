class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :food_title
      t.string :anime_name
      t.string :anime_food_recipe

      t.timestamps
    end
  end
end
