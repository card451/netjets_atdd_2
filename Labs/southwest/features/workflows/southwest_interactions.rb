module Southwest_Interactions

def goto_sw_app
  #todo
  visit SouthwestHome

end

def search_for_flights_between_two_valid_airports
  #todo STUBBED OUT
  ['CMH', 'MCO']

end

def search_results
  #todo
  ['flights']
end

def search_results_dept_airport
  #todo
  'CMH'
end

def search_results_arrival_airport
  #todo
  'MCO'
end

end

World(Southwest_Interactions)