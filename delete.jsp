<html>
<head>
<title> Delete Data </title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<%@page import="jspdemo.User,jspdemo.Structure" %>
<%
	String s=request.getParameter("student_id");
	int i=User.delete(Integer.parseInt(s));
	if(i>0){
%>  	
	<h4 class="text-center text-white bg-danger"> Details Deleted Successfully </h4>
	
		<jsp:include page="fetch.jsp"/>		
<%		
	}
	else{
%> 		
		
		<jsp:include page="error.jsp"/>
<%
	}
%>
</body>
</html>