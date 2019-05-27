# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

creator = Creator.create(email: 'marakemolibeli@yahoo.com', password: 'takerpass')

creator.automos.create(name: 'hilux', displacement: 3.0, enginetype: 1, cargocapacity: 1500, drivenwheels: '4x4',
  vinnumber: 'vinhilux', transmission: 'auto', engineconfiguration: 'i4', forcedinduction: 1, passengerseats: 4,
  urgency: 99, idle: 1)

e = Trip.create(tittle: 'One last ride', equipmentweight: 232, passengercount: 10, destination: 'nowhere',
  details: 'one last ride to nowhere', urgency: 99, completed: 0, creator_id: 1)

automo = Automo.create(name: 'L200', displacement: 2.4, enginetype: 1, cargocapacity: 1300, drivenwheels: '4x4',
    vinnumber: 'vinl200', transmission: 'auto', engineconfiguration: 'i4', forcedinduction: 1, passengerseats: 4,
    urgency: 99, idle: 1, creator_id: 1)

s = Autorecord.create(avgambienttemp: 23.4, barometricpressure: 129, avgengineload: 78, avrmp: 5342,
  fuelconsumption: 21, avgenginetemp: 92, hspeed: 139, avgspeed: 129, trip: 1, runtime: 2, distancetravelled: 2.3)
