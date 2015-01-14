require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/places")

get("/") do
  @places = Places.all()
  erb(:index)
end

post("/places") do
  place = params.fetch("place")
  time = params.fetch("time")
  new_place = Places.new(place, time)
  new_place.save()
  erb(:success)
end
