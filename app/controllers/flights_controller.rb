class FlightsController < ApplicationController
  def index
    @airports = Airport.pluck(:code, :id)
    @passenger_count = (1..4).to_a
    @dates = Flight.pluck(:date).sort.map { |v| v.to_date }.uniq!
    @flights = Flight.find_by_params(params)
  end
end
