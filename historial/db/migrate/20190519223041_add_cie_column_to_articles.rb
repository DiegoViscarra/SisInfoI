class AddCieColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :cie, :string
  end
end
