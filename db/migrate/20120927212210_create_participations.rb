class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.integer :individual_id
      t.integer :episode_id

      t.timestamps
    end
    add_index :participations, :individual_id
    add_index :participations, :episode_id
  end
end
