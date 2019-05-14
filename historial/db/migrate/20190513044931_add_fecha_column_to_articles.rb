class AddFechaColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :fecha, :date
  end
end
