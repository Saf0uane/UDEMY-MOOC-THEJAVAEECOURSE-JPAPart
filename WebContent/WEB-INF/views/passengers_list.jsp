<%@ page import="java.util.*, com.airline.models.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Passengers List</title>
</head>
<body>

	<h1>List of Passengers</h1>
	
	<table>
		<tr>
		
			<th>Id</th>
			<th>First Name </th>
			<th>Last Name </th>
			<th>Date of Birth </th>
			<th>Gender </th>
			
		</tr>
		
		<%
			List<Passenger> pList = (List<Passenger>) request.getAttribute("passenger_list");
			for(Integer i=0; i<pList.size(); i++){
		%>
		
			<tr>
			
				<td><%= pList.get(i).getId() %></td>
				<td><%= pList.get(i).getFirst_name() %></td>
				<td><%= pList.get(i).getLast_name() %></td>
				<td><%= pList.get(i).getDob() %></td>
				<td><%= pList.get(i).getGender() %></td>
				
			</tr>
			
			<tr>
				<td colspan="5">
				
					<%
						if(pList.get( i ).getFlights().size() > 0) {
						   
						    List<Flight> fList = (List<Flight>)pList.get( i ).getFlights();
						    
						    for(Integer k=0; k < fList.size(  ) ; k++) {
						        
						    
					%>
					
						<%=k+1 %>) from <%= fList.get( k ).getFlightOrigin() %> to  <%= fList.get( k ).getFlightDestination(  ) %> @ <%= fList.get( k ).getFlightTime(  ) %>
					
					<%
							}
						} else {
						    
						
					%>
						No tickets Yet
					<%
						}
					%>
					
				</td>
			</tr>
			
		<%
			}
		%>
		
		
	</table>


</body>
</html>