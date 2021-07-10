<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<title>Login</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-5 mt-3">
				<form action="login" method="post">
                    <div class="card" style="border: rgb(205, 218, 27) 1px solid ;box-shadow: 3px 3px 3px rgb(229, 241, 157);">
                        <div class="card-header text-center" style="background-color: rgb(245, 232, 214);">
                            <h4 class="card-title" style="font-family: 'Lobster', cursive;color: rgb(136, 79, 14);">FORM</h4>
                        </div>
                        <div class="card-body">
                        	<div class="row">
								<div class="col">
									<c:if test="${not empty message }">
										<div class="alert alert-success">${message }</div>
									</c:if>
								</div>
							</div>
							<div class="form-group">
								<label for="username"  style="font-family: 'Fjalla One', sans-serif; font-size: 18px;">Username</label> 
								<input type="text" class="form-control" id="username" name="username" value="${username }">
							</div>
							<div class="form-group">
								<label for="password"  style="font-family: 'Fjalla One', sans-serif; font-size: 18px;">Password</label> 
								<input type="password" class="form-control" id="password" name="password" value="${password }">
							</div>
							<div class="form-group form-check">
							    <input type="checkbox" class="form-check-input" id="remember" name="remember">
							    <label class="form-check-label" for="remember"  style="font-family: 'Fjalla One', sans-serif; font-size: 18px;">Remember Me?</label>
						 	 </div>
							
                        </div>
                        <div class="card-footer">
                            <div class="row justify-content-end mr-1">
                                <button class="btn btn-success">Login</button>
                            </div> 
                        </div>
                    </div>
                </form>
			</div>
		</div>
	</div>



	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>


</body>
</html>