<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>User Dashboard</title>
	</head>
	<body>
		<h1>Dashboard</h1>
		<form action = "myAccount.jsp">
			<button type="submit" name="account" value="My Account">My Account</button>
		</form>
		<form action = "listAnItem.jsp">
			<button type="submit" name="listItem" value="List an Item">List an Item</button>
		</form>
		<form action = "SearchListings.jsp">
			<button type="submit" name="SearchList" value="Search Listings">Search Listings</button>
		</form>
		<form action = "EmailBox.jsp">
			<button type="submit" name="email" value="email">Check Email</button>		
		</form>
		<form action = "helpPage.jsp">
			<button type="submit" name="help" value="Help">Help</button>		
		</form>
		<%
		String role = (String)session.getAttribute("role");
		String enabled;
		if(role.equals("Customer Rep")){
			enabled = "enabled";
		} else {
			enabled = "disabled";
		}
		%>
		<br>
		<form action = "editUserCredentials.jsp">
			Change the credentials of any user here (Customer Representatives Only): <br>
			Old Username: <input type="text" name="oldUsername">
  			New Username: <input type="text" name="newUsername"><br>
  			Old Password: <input type="text" name="oldPassword">
  			New Password: <input type="text" name="newPassword"><br>
		<br>
  			<button type="submit" name="command" value="Submit" <%= enabled %>>Change User Info</button>
  		<br>
		</form>
	</body>
</html>