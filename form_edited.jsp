<html>
<head> <title> Details Edited </title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<%@ page import="jspdemo.User,jspdemo.Structure" %>
<jsp:useBean id="obj" class="jspdemo.Structure"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<body>

<%

	int i=User.update(obj);
	
	if(i>0){
		%>
		
		<h4 class="text-center text-white bg-info"> Details Updated Successfully </h4>
		
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