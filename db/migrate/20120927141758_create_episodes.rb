class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.integer :number
      t.text :title
      t.date :first_shown
      t.string :brief_desc

      t.timestamps
    end
  end
end
