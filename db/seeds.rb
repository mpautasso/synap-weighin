# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

# == Read 'participants.csv' file
CSV.foreach('participants.csv', headers: true) do |row|
  row_hash = row.to_hash

  person = Person.find_or_create_by!(name: row_hash['Name'])
  event = Event.find_or_create_by!(name: row_hash['Event'])
  league = League.find_or_create_by!(name: row_hash['League'])

  event.people << person
  league.people << person unless league.people.include?(person)
  event.leagues << league unless event.leagues.include?(league)
end

# == Read 'weighins.csv' file
CSV.foreach('weighins.csv', headers: true) do |row|
  row_hash = row.to_hash

  person = Person.find_by(name: row_hash['Name'])
  event = Event.find_by(name: row_hash['Event'])

  CreateCheckin.call(person, event, row_hash['Weight'].to_f, nil)
end

Checkin.where(weight: 0).destroy_all
