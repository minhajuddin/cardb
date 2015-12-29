class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.string :model_slug
      t.belongs_to :organization, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :models, :model_slug, unique: true
  end
end
