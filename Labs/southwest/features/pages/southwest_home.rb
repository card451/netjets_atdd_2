require 'page-object'

class SouthwestHome
include PageObject

page_url('http://www.southwest.com')

text_field(:departure_airport, :id => 'air-city-departure')
text_field(:arrival_airport, :id => 'air-city-arrival')
button(:search, :id => 'jb-booking-form-submit-button')
text_field(:error_msg, :div => 'Enter a destination airport' )
end
