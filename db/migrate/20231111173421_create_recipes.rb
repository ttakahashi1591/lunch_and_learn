class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :url
      t.string :country
      t.string :image

      t.timestamps
    end
  end
end
