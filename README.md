# What's in my Food

### Versions

Ruby 3.2.2

Rails 7.0.6

### Setup

- Fork and Clone this repo
- `bundle install`
- `bundle exec figaro install`
- `rails db:{create,migrate}`
- `rails s`

First, sign up for an api key here: https://fdc.nal.usda.gov/api-key-signup.html

The documentation for the API can be found here: https://fdc.nal.usda.gov/api-guide.html

Make sure you take the time to read the documentation carefully.

Notes:
  * Running the app and visiting the home page will show an error - THIS IS INTENTIONAL


User story will be provided to you during the mid mod.

As a user,
When I visit "/"
And I fill in the search form with "sweet potatoes"
(Note: Use the existing search form)
And I click "Search"
Then I should be on page "/foods"
Then I should see a total of the number of items returned by the search.
(sweet potatoes should find more than 30,000 results)
Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

And for each of the foods I should see:
- The food's GTIN/UPC code
- The food's description
- The food's Brand Owner
- The food's ingredients