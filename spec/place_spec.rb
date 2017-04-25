require('rspec')
require('place')

describe(Place) do
  before() do
    Place.clear()
  end

  describe("#location") do
    it('lets you give place a location') do
      test_place = Place.new("New York", '1884', 'hot as hell')
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
      test_place = Place.new("New York", '1884', 'hot as hell')
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it('empties out all saved places') do
      Place.new("New York", '1884', 'hot as hell').save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end

  describe('#date') do
    it('lets you give a place a date for when you visited') do
      test_place = Place.new("New York", '1884', 'hot as hell')
      expect(test_place.date()).to(eq('1884'))
    end
  end

  describe('#notes') do
    it('lets you add notes for a place') do
      test_place = Place.new("New York", '1884', 'hot as hell')
      expect(test_place.notes()).to(eq('hot as hell'))
    end
  end
end
