class CreateRates < ActiveRecord::Migration[7.1]
  def change
    create_table :rates do |t|
      t.float :rate

      t.timestamps
    end
  end
end
