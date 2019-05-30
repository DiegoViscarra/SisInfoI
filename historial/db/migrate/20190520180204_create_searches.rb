class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.date :min_fecha
      t.date :max_fecha
      t.string :tipo
      t.string :enfermedad

      t.timestamps
    end
  end
end
