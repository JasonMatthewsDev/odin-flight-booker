class Flight < ActiveRecord::Base
    belongs_to :from_airport,   class_name: 'Airport'
    belongs_to :to_airport,     class_name: 'Airport'
    has_many   :bookings
    
    def self.find_by_params(params)
        if params[:date]
            date = params[:date].to_datetime
            Flight.where(from_airport_id: params[:from], to_airport_id: params[:to],
                          date: date..(date + (1.day - 1.second)))
        end
    end
end
