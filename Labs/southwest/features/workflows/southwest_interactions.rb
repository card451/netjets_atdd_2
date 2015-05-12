module Southwest_Interactions

  def goto_sw_app
    visit SouthwestHome
  end

  def search_for_flights_between_two_valid_airports
    departure_airport = 'CMH'
    arrival_airport = 'MCO'
    #departure_date = ''
    #return_date = ''

    on(SouthwestHome) do |page|
      page.departure_airport = departure_airport
      page.arrival_airport = arrival_airport
#      page.departure_date = departure_date
#      page.return_date = return_date
      page.search
    end
    [departure_airport, arrival_airport]
    end

  def search_for_flights_between_same_airports
    departure_airport = 'CMH'
    arrival_airport = 'CMH'
    #departure_date = ''
    #return_date = ''

    on(SouthwestHome) do |page|
      page.departure_airport = departure_airport
      page.arrival_airport = arrival_airport
#      page.departure_date = departure_date
#      page.return_date = return_date
      page.search
    end
    [departure_airport, arrival_airport]
  end

    def search_results
      on(SouthwestSearchResults).flights
    end

    def search_results_departure_airport
      on(SouthwestSearchResults).departure_airport
    end

    def search_results_arrival_airport
      on(SouthwestSearchResults).arrival_airport
    end
  def error_msg
    on(SouthwestHome).error_msg
  end

  end

  World(Southwest_Interactions)