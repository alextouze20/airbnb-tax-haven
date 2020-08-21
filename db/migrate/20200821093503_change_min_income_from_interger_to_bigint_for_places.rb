class ChangeMinIncomeFromIntergerToBigintForPlaces < ActiveRecord::Migration[6.0]
  def change
    change_column :places, :min_income, :bigint
  end
end
