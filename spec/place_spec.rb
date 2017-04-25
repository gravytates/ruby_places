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

  describe("#save") do
    it('adds a place to the array of saved places') do
      test_place = Place.new("New York")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it('empties out all saved places') do
      Place.new("New York").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
