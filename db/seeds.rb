# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cars = [{:make => 'Hyundai', :model => 'Matrix', :color => 'Silver', :type => 'Automatic', :year => '2005', :short_desc => 'Good Condition', :long_desc => 'only 45,000 km', :owner => 'Ayzuabi'},
    	  {:make => '', :model => '', :color => '', :type => '', :year => '', :short_desc => '', :long_desc => '', :owner => ''},
    	  {:make => '', :model => '', :color => '', :type => '', :year => '', :short_desc => '', :long_desc => '', :owner => ''},
      	  {:make => '', :model => '', :color => '', :type => '', :year => '', :short_desc => '', :long_desc => '', :owner => ''},
      	  {:make => '', :model => '', :color => '', :type => '', :year => '', :short_desc => '', :long_desc => '', :owner => ''},
      	  {:make => '', :model => '', :color => '', :type => '', :year => '', :short_desc => '', :long_desc => '', :owner => ''},
      	  {:make => '', :model => '', :color => '', :type => '', :year => '', :short_desc => '', :long_desc => '', :owner => ''},
      	  {:make => '', :model => '', :color => '', :type => '', :year => '', :short_desc => '', :long_desc => '', :owner => ''},
      	  {:make => '', :model => '', :color => '', :type => '', :year => '', :short_desc => '', :long_desc => '', :owner => ''},
      	  {:make => '', :model => '', :color => '', :type => '', :year => '', :short_desc => '', :long_desc => '', :owner => ''},
  	 ]

cars.each do |car|
  Car.create!(car)
end
