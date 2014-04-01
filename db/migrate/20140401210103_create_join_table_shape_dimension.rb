class CreateJoinTableShapeDimension < ActiveRecord::Migration
  def change
    create_join_table :shapes, :dimensions do |t|
      # t.index [:shape_id, :dimension_id]
      # t.index [:dimension_id, :shape_id]
    end
  end
end
