require "rails_helper"


RSpec.describe "Foods Service" do
  describe "as a visitor" do
    it "can search for a food" do

      stub_request(:get, "https://api.nal.usda.gov/fdc/v1/foods/search?api_key=J8JxUNUBYHtONi771hg1nXaBrOKWC6DrRdp9alwK&query=Cheddar%20Cheese").
      with(
        headers: {
       'Accept'=>'*/*',
       'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       'User-Agent'=>'Faraday v2.7.10'
        }).
      to_return(status: 200, body: "", headers: {})
      # stub_request(:get, "https://api.nal.usda.gov/fdc/v1/foods/search?api_key=J8JxUNUBYHtONi771hg1nXaBrOKWC6DrRdp9alwK&query=Cheddar%20Cheese")
      # .to_return(body: file_fixture("foods_response.json").read)

      search = FoodsService.new.find_food("Cheddar Cheese")

      expect(search).to be_a(Hash)

      foods = search[:data].first
    end
  end
end