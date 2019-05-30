class AddMedicacionColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :medicacion, :text
  end
end
