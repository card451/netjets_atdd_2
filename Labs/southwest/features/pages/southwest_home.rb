require 'page-object'

class SouthwestHome
include PageObject

page_url('http://www.southwest.com')

text_field(:departure_airport, :id => 'air-city-departure')
text_field(:arrival_airport, :id => 'air-city-arrival')
button(:search, :id => 'jb-booking-form-submit-button')
div(:error_msg, :class => 'js-destination-airport-label booking-form--label booking-form--location-container-label error-label')
end
