<html>
<head>
<title> Success </title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<h3 class="text-center bg-info text-white">Details Succesfully added to Database</h3>
<jsp:include page="index.jsp"/>
<br>
<div class="form-group">
<form action="fetch.jsp" method="post">
<input type="submit" class="btn btn-info " value=" Fetch Data" >
</form>
</div>
</body>
</html>