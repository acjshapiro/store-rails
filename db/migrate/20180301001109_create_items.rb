class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.belongs_to :dept, foreign_key: true

      t.timestamps
    end
  end
end
