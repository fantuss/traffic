class CreateCartEntries < ActiveRecord::Migration
  def change
    create_table :cart_entries do |t|
      t.integer :count
      t.datetime :removed_at

      t.references :cart, index: true
      t.references :dimension, index: true
      t.references :sign, index: true

      t.timestamps
    end
  end
end
