<html>
<head> <title> Edit Form</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<%@ page import="jspdemo.User,jspdemo.Structure" %>
<jsp:useBean id="obj" class="jspdemo.Structure"/>
<jsp:setProperty property="*" name="obj"/>
<body>

<form action="fetch.jsp">
<input type="submit" class="btn btn-secondary" value="Back">
</form>
<%
	Structure so=null;
	String s=request.getParameter("student_id");
	 so=User.edit(Integer.parseInt(s));
	
%>
<div class="container">
<h3 class="text-center display-4"> Edit Form </h3>
<div class="form-group">
<form action="form_edited.jsp" method="post">
<label for="id">
Id:
<input class="form-control" type="text" id="id" readonly  name="id" value="<%=so.getId() %>">
</label>
<br/>
<label for="name">
Name:
<input class="form-control"type="text" id="name"  name="name" required value="<%=so.getName() %>">
</label>
<br>
<label for="email">
Email:
<input type="email" id="email" class="form-control"  name="email" required value="<%=so.getEmail() %>">
</label>
<br>
<label for="password">
Password:
<input class="form-control" type="password" id="password" placeholder="Enter Password" required name="password" value="<%=so.getPassword() %>">
</label>
<br><br>
<input class="btn btn-info" type="submit" value="Submit" name="submit" >
</form>  
</div>
</div>
</body>
</html>