namespace :events do
  desc 'Create first event and put all checkins in that event'
  task create_first: :environment do
    event = Event.where(name: '2014').first_or_create
    Checkin.find_each do |c|
      c.event = event
      c.save!
    end
  end

  task :create, %i[name tagline] => [:environment] do |_t, args|
    CreateEvent.call(args[:name], args[:tagline])
  end
end
