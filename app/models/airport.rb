class Airport < ActiveRecord::Base
    has_many :departing_flights,    foreign_key: :from_airport_id,  class_name: 'Flight'
    has_many :flight_destinations,  foreign_key: :to_airport_id,    class_name: 'Flight'
end
