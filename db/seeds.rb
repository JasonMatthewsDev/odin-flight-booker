Airport.delete_all
Airport.create!([{code: 'SFO'}, {code: 'NYC'}])

dates = ['3/1/2015', '3/2/2015', '3/3/2015', '3/4/2015', '3/5/2015']

Flight.delete_all
20.times do |x|
  x % 2 == 0 ? (from, to = Airport.first.id, Airport.last.id) : (from, to = Airport.last.id, Airport.first.id)
  
  date = Time.at(Time.now + rand * ((Time.now + 4.days).to_f - Time.now.to_f))
  duration = 6
  Flight.create!(to_airport_id: to, from_airport_id: from, date: date, duration: duration)
end