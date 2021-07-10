<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Fjalla+One&family=Lobster&family=Original+Surfer&family=Playfair+Display&display=swap" rel="stylesheet">

<base href="${pageContext.servletContext.contextPath}/"/>
</head>
<body>
	<div class="container">
		
		<div class="row">
			<div class="col-sm-4">
				<form:form  action="student" modelAttribute="student" method="post">
					<div class="form-group">
						<label>Id</label>
						<form:input path="id" class="form-control" />
						<form:errors path="id"/>
					</div>
					<div class="form-group">
						<label>Name</label>
						<form:input path="name" class="form-control" />
						<form:errors path="name"/>
					</div>
					<div class="form-group">
						<label>Mark</label>
						<form:input type="number" step="0.1" path="mark" class="form-control" />
						<form:errors path="mark" />
					</div>
					<div class="form-group">
						<label for="">Major</label>
						<form:select class="form-control" path="major.id">
							<form:options items="${majors}" />
						</form:select>
					</div>
					<div class="form-group">
						<button class="btn btn-dark" name="btnInsert">Insert</button>
						<button class="btn btn-dark ml-2" name="btnUpdate">Update</button>
						<button class="btn btn-dark ml-2" name="btnReset">Reset</button>
					</div>
				</form:form>
			</div>
			
			<div class="col-sm-7 mr-2">
				<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Major</th>
						<th>Mark</th>
					</tr>
				</thead>
				<body>
					<c:forEach var="item" items="${listST}">
						<tr>
							<th>${item.id }</th>
							<th>${item.name }</th>
							<th>${item.major.name }</th>
							<th>${item.mark }</th>
							<th>
								<a href="student/edit/${item.id}">Edit</a>
								<a class="ml-2" href="student/delete/${item.id }">Delete</a>
							</th>
						</tr>
					</c:forEach>
				</body>
			</table>
			</div>
		</div>
		
	</div>

</body>
</html>