class Places
  @@all_places = []
  define_method(:initialize) do |place, time|
    @place = place
    @time = time
  end

  define_method(:place) do
    @place
  end

  define_method(:time) do
    @time
  end

  define_singleton_method(:all) do
    @@all_places
  end

  define_method(:save) do
    @@all_places.push(self)
  end

  define_singleton_method(:clear) do
    @@all_places = []
  end
end
