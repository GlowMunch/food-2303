require "rails_helper"


RSpec.describe "Foods Service" do
  describe "as a visitor" do
    it "can search for a food" do

      stub_request(:get, "https://api.nal.usda.gov/fdc/v1/foods/search?api_key=J8JxUNUBYHtONi771hg1nXaBrOKWC6DrRdp9alwK&query=Cheddar%20Cheese")
      .to_return(body: file_fixture("foods_response.json").read)

      search = FoodsService.new.find_food("Cheddar Cheese")
      require 'pry'; binding.pry
      expect(search).to be_a(Hash)

      foods = search[:data].first

      # expect(park).to have_key(:fullName)
      # expect(park[:fullName]).to be_a(String)

      # expect(park).to have_key(:description)
      # expect(park[:description]).to be_a(String)

      # expect(park).to have_key(:directionsInfo)
      # expect(park[:directionsInfo]).to be_a(String)

      # expect(park).to have_key(:operatingHours)
      # expect(park[:operatingHours]).to be_a(Array)
    end
  end
end