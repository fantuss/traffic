class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.datetime :submitted_at
      t.datetime :processed_at
      t.string :permalink, index: true

      t.references :user, index: true

      t.timestamps
    end
  end
end
