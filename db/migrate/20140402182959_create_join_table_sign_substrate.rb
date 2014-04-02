class CreateJoinTableSignSubstrate < ActiveRecord::Migration
  def change
    create_join_table :signs, :substrates do |t|
      # t.index [:sign_id, :substrate_id]
      # t.index [:substrate_id, :sign_id]
    end
  end
end
