require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/place')

get('/') do
  @places = Place.all()
  erb(:index)
end

post('/result') do
  location = params.fetch('location')
  date = params.fetch('date')
  notes = params.fetch('notes')
  place = Place.new(location, date, notes)
  place.save()
  erb(:result)
end
