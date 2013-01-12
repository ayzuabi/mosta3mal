# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cars = [{:make => 'Hyundai', :model => 'Matrix', :color => 'Silver', :type => 'Automatic', :year => '2005', :short_desc => 'Good Condition', :long_desc => 'only 45,000 km', :owner => 'Ayzuabi'},
{:make => 'kia', :model => 'k5', :color => 'black', :type => 'automatic', :year => '2010', :short_desc => 'good condition', :long_desc => '49,902 km', :owner => 'Ngharib'},
{:make => 'nissan', :model => 'sentra', :color => 'black', :type => 'automatic', :year => '2005', :short_desc => 'good condition', :long_desc => '94,125 km', :owner => 'Ngharib'},
{:make => 'kia', :model => 'soul', :color => 'silver', :type => 'automatic', :year => '2009', :short_desc => 'good condition', :long_desc => '38,000 km', :owner => 'Ayzuabi'},
{:make => 'toyota', :model => 'corolla-sedan', :color => 'white', :type => 'automatic', :year => '2001', :short_desc => 'good condition', :long_desc => '105,731 km', :owner => 'Ngharib'},
{:make => 'nissan', :model => 'tiida-hatchback', :color => 'black', :type => 'automatic', :year => '2005', :short_desc => 'good condition', :long_desc => '39,700 km', :owner => 'Ayzuabi'},
{:make => 'hyundai', :model => 'elantra', :color => 'Burgundy', :type => 'automatic', :year => '2004', :short_desc => 'good condition', :long_desc => '20,834 km', :owner => 'Ngarib'},
{:make => 'kia', :model => 'carens', :color => 'black', :type => 'automatic', :year => '2002', :short_desc => 'good condition', :long_desc => '83,000 km', :owner => 'Ayzuabi'},
{:make => 'daihatsu', :model => 'terios', :color => 'red', :type => 'automatic', :year => '1997', :short_desc => 'good condition', :long_desc => '65,510 km', :owner => 'Ayzuabi'},
{:make => 'opel', :model => 'astra', :color => 'silver', :type => 'automatic', :year => '1999', :short_desc => 'good condition', :long_desc => '93,096', :owner => 'Ngharib'},
]

cars.each do |car|
  Car.create!(car)
end
