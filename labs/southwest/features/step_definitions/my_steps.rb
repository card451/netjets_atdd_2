require 'page-object'
require 'watir-webdriver'

include PageObject::PageFactory

When(/^I search for flights between 2 airports for a specific day$/) do
  goto_sw_app
  @test_dept_ap, @test_arrival_ap = search_for_flights_between_two_valid_airports

  # enter a Dept AP //*[@id="air-city-departure"]
  # enter an arrival AP
  # click search
 # browser.a(:text => 'SEARCH').click

end


Then(/^I am shown all available flight between those 2 airports for that day$/) do
  # make sure there are results
  expect(search_results).not_to be_empty
 # make sure dept and arrival match APs from previous step
  expect(search_results_dept_airport).to eq @test_dept_ap
  expect(search_results_arrival_airport).to eq @test_arrival_ap
end



When(/^I search for flights departing and arriving at the same airport$/) do
  pending
end

Then(/^I am notified that I cannot perform the search$/) do
  pending
end