#contenido dummy airline
Airline.delete_all
airline_1 = Airline.create( name:"Aerolíneas Cóndor" )
airline_2 = Airline.create( name:"El Chulo Aerolíneas" )
#contenido dummy flight
Flight.delete_all
flight_1 = Flight.create( airline_id:airline_1.id, number:125 )
flight_2 = Flight.create( airline_id:airline_2.id, number:579 )


#contenido dummy arrival
Arrival.delete_all
data = DateTime.strptime("09/14/2015 7:30", "%m/%d/%Y %H:%M")
data_2 = DateTime.strptime("09/14/2015 10:10", "%m/%d/%Y %H:%M")
Arrival.create( flight_id:flight_1.id, date: data, status: 2 )
Arrival.create( flight_id:flight_2.id, date: data_2, status: 3 )


#contenido dummy departure
Departure.delete_all
data_3 = DateTime.strptime("09/14/2015 18:20", "%m/%d/%Y %H:%M")
data_4 = DateTime.strptime("09/14/2015 01:40", "%m/%d/%Y %H:%M")
Departure.create( flight_id:flight_1.id, date: data_3, status: 0 )
Departure.create( flight_id:flight_2.id, date: data_4, status: 1 )
