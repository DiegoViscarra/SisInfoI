class AddTipoConsultaColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :tipo_consulta, :string
  end
end
