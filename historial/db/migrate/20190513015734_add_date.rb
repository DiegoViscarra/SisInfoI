class AddDate < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.integer :visits_count
      t.date :date_visit
      t.timestamps null: false
    end
  end
end
