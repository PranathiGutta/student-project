<html>
<head> 
<title> Fetch Data </title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<form action="home.jsp">
<input class="btn btn-secondary" type="submit" value="Home">
</form>
<%@page import="jspdemo.User,java.util.*,jspdemo.Structure" %>
<jsp:useBean id="obj" class="jspdemo.Structure"/>
<jsp:setProperty name="obj" property="*"/> 
<div class="container">
<div class="row">
<div class="col-md-8">
<h3 class="display-3 my-1"> Student Details</h3>
<div class="table-responsive">
<table class="table table-bordered table-hover ">
<tr>
<th> Id </th> <th> Name </th> <th> Email </th> <th> Password </th> <th> Action </th>
</tr>
<% List<Structure> li=User.fetch();
for(int i=0;i<li.size();i++){	
%>
<tr> 
<td> <% out.println(li.get(i).getId()); %></td>
<td> <%	out.println(li.get(i).getName()); %> </td>
<td> <%	out.println(li.get(i).getEmail()); %> </td>
<td> <%	out.println(li.get(i).getPassword()); %> </td>
<td> <a href="edit.jsp?student_id=<%= li.get(i).getId()%>"> Edit /</a>
<a href="delete.jsp?student_id=<%= li.get(i).getId()%>">Delete</a> 
</td>
</tr>
<% }
%>
</table>
</div>
</div>
</div>
</div>
</body>
</html>