require 'page-object'
require 'watir-webdriver'

include PageObject::PageFactory

When(/^I search for flights between 2 airports for a specific day$/) do
  goto_sw_app
  #search_for_flights_between_two_valid_airports
  @test_departure_airport, @test_arrival_airport = search_for_flights_between_two_valid_airports

end


Then(/^I am shown all available flight between those 2 airports for that day$/) do
  # make sure there are results
  expect(search_results).not_to be_empty
 # make sure dept and arrival match APs from previous step
  expect(search_results_departure_airport).to include @test_departure_airport
  expect(search_results_arrival_airport).to include @test_arrival_airport
end



When(/^I search for flights departing and arriving at the same airport$/) do
  goto_sw_app
  #search for flights between the same airport
  @test_departure_airport, @test_arrival_airport = search_for_flights_between_same_airports

end

Then(/^I am notified that I cannot perform the search$/) do
 # make sure I get an error msg
  expect(error_msg).to include 'Enter a destination airport'

end