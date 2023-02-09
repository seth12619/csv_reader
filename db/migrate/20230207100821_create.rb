class Create < ActiveRecord::Migration[7.0]
  def change
    create_table :covid_observations do |t|
      t.integer "sno"
      t.datetime "observation_date"
      t.string "country"
      t.integer "confirmed"
      t.integer "deaths"
      t.integer "recovered"
    end
  end
end
