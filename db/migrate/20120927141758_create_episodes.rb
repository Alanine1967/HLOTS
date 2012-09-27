class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.integer :number
      t.text :title
      t.date :first_shown
      t.string :brief_desc
      t.integer :season_id
      
      t.timestamps
    end
    add_index :episodes, :season_id
  end
end
