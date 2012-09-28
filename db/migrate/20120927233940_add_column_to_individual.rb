class AddColumnToIndividual < ActiveRecord::Migration
  def change
    add_column :individuals, :cast, :boolean
  end
end
