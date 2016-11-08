<!DOCTYPE html>

<html>

	<head>
		
		<style>
			
			body {
				font-family: arial, sans-serif;
				font-size: 14px;
			}
			
		</style>
		
	</head>
	
	<body>
	
		<h1 style="text-decoration: underline;">Fancy Form</h1>
		
		<h1>Add flight and airplane</h1>
		
		<form method="POST" action="AddFlight">
		
			From:
			
			<select id= "from_destination" name="from_destination">
				<option value = "San_Francisco">San Francisco</option>
				<option value = "Los_Angeles">Los Angeles</option>
				<option value = "New_York">New York</option>
				<option value = "London">London</option>
				<option value = "Paris">Paris</option>
				<option value = "Rome">Rome</option>
				<option value = "Amsterdam">Amsterdam</option>
			</select>
			
			<br/><br/>
			
			To:
			
			<select name="to_destination">
				<option value = "San_Francisco">San Francisco</option>
				<option value = "Los_Angeles">Los Angeles</option>
				<option value = "New_York">New York</option>
				<option value = "London">London</option>
				<option value = "Paris">Paris</option>
				<option value = "Rome">Rome</option>
				<option value = "Amsterdam">Amsterdam</option>
			</select>
			
		    <h4>Time of flight:</h4>
		    
		    <hr/>
		    
		    Year:
		    
		    <select name="year">
				<option value = "2015">2015</option>
				<option value = "2016">2016</option>
				<option value = "2017">2017</option>
				<option value = "2018">2018</option>
				<option value = "2019">2019</option>
				<option value = "2020">2020</option>
				<option value = "2021">2021</option>
			</select>
			
			<br/> <br/>
			
			Month:
			
			 <select name="month">
				<option value = "1">January</option>
				<option value = "2">February</option>
				<option value = "3">March</option>
				<option value = "4">April</option>
				<option value = "5">May</option>
				<option value = "6">June</option>
				<option value = "7">July</option>
				<option value = "8">August</option>
				<option value = "9">September</option>
				<option value = "10">October</option>
				<option value = "11">November</option>
				<option value = "12">December</option>
			</select>
			
			<br/><br/>
			
			Day of Month:
			
			<input name="day" type="text" />
			
			<br/><br/>
			
			Hour of day (0 - 23):
			
			<input name="hour" type="text" />
			
			Minute (0 - 59):
			
			<input name = "minute" type="text" />
			
			<br/> <br/>
			
			Price:
			
			<input name="price" type="text" />
			
			<hr/>
			
			<h4>Airplane</h4>
			
			Plane Make:
			<input name = "airplane_make" type = "text" />
			
			Model Name:
			<input name = "model_name" type = "text" />
			
			Seating:
			<input name = "airplane_seating" type = "text" />
			
			<hr/>
			
			<button type="submit">Add flight and airplane</button>    

		</form>
		
		<h1>Add Pilot to Flight</h1>
		
		<form method="POST" action="CreatePilotAndAddToFlight">
		
			First Name:
			<input name = "first_name" type = "text" />
			
			<br/><br/>
			
			Last Name:
			<input name = "last_name" type = "text" />
			
			<br/><br/>
			
			License:
			<input name = "license" type = "text" />
			
			<br/><br/>
			
			Pilot rank:
			
			<select name="pilot_rank">
				<option value = "Captain">Captain</option>
				<option value = "First_Officer">First Officer</option>
				<option value = "Junior_Officer">Junior Officer</option>
			</select>
			
			<br/><br/>
			
			Flight Id:
			<input name = "fid" type = "text" />
			
			<hr/>
			
			<button type="submit">Add pilot to flight</button>
			
			<hr/>
		
		</form>
		
		<h1>Add Passenger</h1>
		
		<form method="POST" action = "AddPassenger">
		
			First Name:
			<input name = "first_name" type = "text" />
			<br/><br/>
			
			Last Name:
			<input name = "last_name" type = "text" />
			<br/><br/>
			
			Date of birth:
			<input name = "dob" type = "text" />
			<br/><br/>
			
			Gender:
			<select name="gender">
				<option value= "Male">Male</option>
				<option value= "Female">Female</option>
			</select>
			
			<hr/>
			
			<button type="submit">Add Passenger</button>
			<hr/>
		
		</form>
		
		<h1>Add passenger to flight</h1>
		
		<form method = "POST" action="AddPassengerToFlight">
		
			Add a passenger with an id of
			<input name="pid" type = "text" />
			
			to a flight with an id of
			
			<input name="fid" type = "text" />
			
			<hr />
			
			<button type = "submit">Add passenger to flight</button>
			
			<hr/>
		
		</form>
		
		<h1>Add flight to passenger <span style = "font-size: 16px; vertical-align: middle;">(give a passenger another flight ticket to his/her collection of flight tickets)</span> </h1>
		
		<form method = "POST" action = "AddFlightTicketsToPassenger" >
		
				Add a ticket for a flight with an id of
				<input name = "fid" type = "text" />
				
				To a Passenger with an id of
				<input name = "pid" type = "text" />
				
				<br/><br/>
				
				<span style="font-weight: bold;">(In real world terms - add the flight ticket to the passenger's collection of flight tickets)</span>
				
				<hr/>
				
				<button type = "submit">Add flight (ticket) to passenger's flight tickets</button>
				
				<hr/>
		
		</form>
	
	</body>
	
</html>