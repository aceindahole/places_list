require('rspec')
require('places')

describe(Places) do
  before() do
    Places.clear()
  end

  describe("#place") do
    it("lets you give it a place") do
      test_place = Places.new("Oregon", "Fall 2014")
      expect(test_place.place()).to(eq("Oregon"))
    end
  end

  describe("#time") do
    it("outputs the second argument, the time you've been at the place") do
      test_place = Places.new("Oregon", "Fall 2014")
      expect(test_place.time()).to(eq("Fall 2014"))
    end
  end

  describe("#save") do
    it("adds a Places task to the array of Places tasks") do
      test_place = Places.new("Oregon", "Fall 2014")
      test_place.save()
      expect(Places.all()).to(eq([test_place]))
    end
  end

  describe(".all") do
    it("is iniatally empty") do
      expect(Places.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of saved tasks") do
      Places.new("Oregon", "Fall 2014").save()
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end
end
