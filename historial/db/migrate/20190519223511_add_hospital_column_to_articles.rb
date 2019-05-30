class AddHospitalColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :hospital, :string
  end
end
