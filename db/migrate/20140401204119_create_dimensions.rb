class CreateDimensions < ActiveRecord::Migration
  def change
    create_table :dimensions do |t|
      t.string :name
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
