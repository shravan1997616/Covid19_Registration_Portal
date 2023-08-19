<%@include file="header.html"%>
<!DOCTYPE html>
<html>
	<title>COVID19</title>
	<body>
		<div class="w3-container">
  			<div class="w3-bar w3-black">
    			<button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Create a new user</button>
   
     			<a href="index.html" class="w3-bar-item w3-button tablink">Logout</a>
  			</div>
			<br><br>
		</div>
	</body>
		<!------ Include the above in your HEAD tag ---------->
		
</html>
<!-- <!doctype html> -->
<html lang="en">
	<head>
    	<!-- Required meta tags -->
    	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    	
    	<!-- Bootstrap CSS -->
    	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	</head>
	
	<body>
		<main class="my-form">
        	<div class="row justify-content-center">
            	<div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Create a new user</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="addNewUser.jsp" method="post">
                            	<div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">User Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="name">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">User ID</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="userId">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Password</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="pasword">
                                    </div>
                                </div>

                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">Save</button>
                                    </div>
                                </div>
                            </form>
                       </div>
                    </div>
             </div>
          </div>
		</main>
	</body>
</html>