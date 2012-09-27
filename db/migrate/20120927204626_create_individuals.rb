class CreateIndividuals < ActiveRecord::Migration
  def change
    create_table :individuals do |t|
      t.string :role
      t.string :first_name
      t.string :middle_name
      t.string :surname
      t.text :biography

      t.timestamps
    end
      add_index :individuals, :surname
      add_index :individuals, :role
  end
end
