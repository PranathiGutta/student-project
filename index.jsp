<html>
<head> <title>Hello JSP</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<style>
	
	</style>
</head>
<body>

<div class="form-group">
<form action="home.jsp">
<input class="btn btn-secondary" type="submit" value="Back">
</form>
</div>

<div class="container">
<div class="row">
<div class="col-md-6">
<h3 class="display-4 "> Form </h3>
<div class="form-group">
 <form action="process.jsp" method="post" enctype="multipart/form-data">
<label for="name">
Enter Name:
<input class="form-control" type="text" id="name" placeholder="Enter Name" name="name" required>
</label>
<br> <br>
<label for="email">
Enter Email:
<input class="form-control" type="email" id="email" placeholder="Enter Email" name="email" required>
</label>
<br><br>
<label for="password">
Enter Password:
<input class="form-control" type="password" id="password" placeholder="Enter Password" name="password" required>
</label>
<br><br>
<input type="file" class="btn btn-primary"  required name="image">
<br> <br>
<input class=" btn btn-primary " type="submit" value="Submit" name="submit" >
</form>
</div>   
</div>

</div>

</div>
</body>
</html>