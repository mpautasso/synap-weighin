class CreateLeaguePeople < ActiveRecord::Migration
  def change
    create_table :league_people do |t|
      t.references :league, index: true, null: false
      t.references :person, index: true, null: false
      t.timestamps
    end
  end
end
