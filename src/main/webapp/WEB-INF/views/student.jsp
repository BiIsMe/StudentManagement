<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Fjalla+One&family=Lobster&family=Original+Surfer&family=Playfair+Display&display=swap" rel="stylesheet">

	<base href="${pageContext.servletContext.contextPath}/"/>
  <title>Student</title>
  <style>
  	*[id$=errors]{
		color:red;
		font-style: italic;
	}
  </style>

</head>
<body>
    <div class="container">
        <div class="row mt-2">
            <div class="col-sm-12 text-center">
                <h2 class="alert alert-success">
                    STUDENT INFORMATION
                </h2>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-sm-4">
                <form:form modelAttribute="student" action="student" method="post">
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
                                <label for="" style="font-family: 'Fjalla One', sans-serif; font-size: 18px;">ID</label>
                                <form:input path="idSt" class="form-control"/>
                                <form:errors path="idSt" />
                            </div>
                            <div class="form-group">
                                <label for="" style="font-family: 'Fjalla One', sans-serif; font-size: 18px;">Full Name</label>
                                <form:input class="form-control" path="name"/>
                                <form:errors path="name" />
                            </div>
                            
                            <div class="form-group">
                                <label for="" style="font-family: 'Fjalla One', sans-serif; font-size: 18px;">Mark</label>
                                <form:input class="form-control" type="number" path="mark"/>
                                <form:errors path="mark" />
                            </div>
                            
                            <div class="form-group">
                                <label for="" style="font-family: 'Fjalla One', sans-serif; font-size: 18px;">EMail</label>
                                <form:input class="form-control" path="gmail"/>
                                <form:errors path="gmail" />
                            </div>
                            
                            <div class="form-check">
                            	<div class="row">
                            		<label for="" class="form-check-label" style="font-family: 'Fjalla One', sans-serif; font-size: 18px;">Gender</label>
                            	</div>
                            	<div class="row">
                            		<div class="form-check form-check-inline mt-1" style="font-family: 'Fjalla One', sans-serif; font-size: 16px;">
		                                <form:radiobuttons class="form-check-input ml-2" path="sex" items="${genders }" delimiter=""/>
		                            </div>
                            	</div>
                           	</div>
                            <div class="form-group">
                            	<label for="" style="font-family: 'Fjalla One', sans-serif; font-size: 18px;">Major</label>
                            	<form:select class="form-control" path="major">
                            		<form:options items="${majors }"/>
                            	</form:select>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="row justify-content-end">
                                <button class="btn btn-success mr-3" name="btnInsert" style="font-family: 'Fjalla One', sans-serif;"> <i class="fa fa-bookmark-o" aria-hidden="true"></i> Create</button>
                                <button class="btn btn-warning mr-3" name="btnUpdate" style="font-family: 'Fjalla One', sans-serif;"><i class="fa fa-info" aria-hidden="true"></i> Update</button>
                                <button class="btn btn-info" name="btnReset" style="font-family: 'Fjalla One', sans-serif;"><i class="fa fa-paper-plane-o" aria-hidden="true"></i> Reset</button>
                            </div> 
                        </div>
                    </div>
                </form:form>
            </div>
			
            
           
        </div>
    </div>    

</body>
</html>