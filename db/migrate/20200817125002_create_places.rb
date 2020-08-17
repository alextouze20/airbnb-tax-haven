class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name
      t.integer :tax
      t.string :control
      t.string :reputation
      t.string :regime
      t.string :position
      t.string :continent
      t.integer :min_income
      t.text :description

      t.timestamps
    end
  end
end
