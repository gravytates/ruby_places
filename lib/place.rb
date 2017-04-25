class Place

  @@all_places = []

  define_method(:initialize) do |location, date, notes|
    @location = location
    @date = date
    @notes = notes
  end

  define_singleton_method(:clear) do
    @@all_places = []
  end

  define_singleton_method(:all) do
    @@all_places
  end

  define_method(:location) do
    @location
  end

  define_method(:save) do
    @@all_places.push(self)
  end

  define_method(:date) do
    @date
  end

  define_method(:notes) do
    @notes
  end
end
