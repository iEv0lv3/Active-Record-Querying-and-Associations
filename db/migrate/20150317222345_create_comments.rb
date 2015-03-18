class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |table|
      table.text :contents, null: false
      table.string :recipe_id, null: false

      table.timestamps
    end
  end
end
