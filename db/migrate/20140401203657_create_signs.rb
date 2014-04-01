class CreateSigns < ActiveRecord::Migration
  def change
    create_table :signs do |t|
      t.string :name
      t.text :description

      t.references :shape, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
