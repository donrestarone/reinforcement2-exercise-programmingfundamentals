venues = [
{ address: "123 Main Street", city: "Toronto", wheelchair_accessible: true, capacity: 100 },
{ address: "567 Centre Street", city: "Toronto", wheelchair_accessible: false, capacity: 400 },
{ address: "9B Ontario Street", city: "Montreal", wheelchair_accessible: true, capacity: 1000 },
{ address: "56 Road Avenue", city: "Ottawa", wheelchair_accessible: true, capacity: 650 },
{ address: "938 Avenue Way East", city: "Toronto", wheelchair_accessible: false, capacity: 90 },
{ address: "34 Main Street West", city: "London", wheelchair_accessible: false, capacity: 300 },
{ address: "44 Quebec Road", city: "Toronto", wheelchair_accessible: true, capacity: 200 },
{ address: "10 Spruce Avenue Ouest", city: "Montreal", wheelchair_accessible: false, capacity: 525 }
]

#Find the possible venues that are wheelchair accessible, in Toronto, and can fit at least 150 people. 
venues_wheelchair = []
def wheelchair_access  (list, output, location)#(location, city, wheelchairaccess, capacity)
	list.each do |wheelchairaccess|
		if wheelchairaccess[:wheelchair_accessible] == true && wheelchairaccess[:capacity] >= 150 && wheelchairaccess[:city] == location.capitalize


			#p wheelchairaccess[:address]
			#venues_wheelchair.push(wheelchairaccess[:address])
			  output.push(wheelchairaccess[:address])

		else 
			p "there are no locations that match the criteria"
		end 


	end 
end
#locations = ["London"]

wheelchair_access(venues, venues_wheelchair, "ottawa")  #(venues,"Toronto", true, 150 )

#wheelchair_access(venues, venues_wheelchair, "toronto")  #(venues,"Toronto", true, 150 )

puts venues_wheelchair