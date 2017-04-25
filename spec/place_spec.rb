require('rspec')
require('place')

describe(Place) do
  describe("#location") do
    it('lets you give place a location') do
      test_place = Place.new("New York")
      expect(test_place.location()).to(include("New York"))
    end
  end

  describe(".all") do
    it('is empty at first') do
      expect(Place.all()).to(eq([]))
    end
  end
end
