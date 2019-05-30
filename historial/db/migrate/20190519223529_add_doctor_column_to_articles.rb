class AddDoctorColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :doctor, :string
  end
end
