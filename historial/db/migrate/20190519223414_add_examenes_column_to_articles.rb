class AddExamenesColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :examenes, :text
  end
end
