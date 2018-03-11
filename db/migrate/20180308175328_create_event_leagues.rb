class CreateEventLeagues < ActiveRecord::Migration
  def change
    create_table :event_leagues do |t|
      t.references :event, index: true, null: false
      t.references :league, index: true, null: false
      t.timestamps
    end
  end
end
