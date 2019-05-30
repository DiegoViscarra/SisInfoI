class AddDiagnosticoColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :diagnostico, :text
  end
end
