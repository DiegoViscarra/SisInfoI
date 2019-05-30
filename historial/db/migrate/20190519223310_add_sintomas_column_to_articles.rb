class AddSintomasColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :sintomas, :text
  end
end
