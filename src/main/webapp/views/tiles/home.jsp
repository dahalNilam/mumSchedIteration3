<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<html lang="en">
<head>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">


		<security:authorize access="hasRole('ROLE_ADMIN')">
			<ul class="nav nav-pills">
				<li>
					<form action="<spring:url value=""/>" method="get">
						<input type="submit" value="CRUD user profile" />
					</form>
				</li>
				<li>
					<form action="<spring:url value=""/>" method="get">
						<input type="submit" value="CRUD Block" />
					</form>
				</li>
				<li>
					<form action="<spring:url value="/entry/add"/>" method="get">
						<input type="submit" value="CRUD Entries" />
					</form>
				</li>
				<li>
					<form action="<spring:url value="/course/add"/>" method="get">
						<input type="submit" value="CRUD Courses" />
					</form>
				</li>
				<li>
					<form action="<spring:url value="/schedule/add"/>" method="get">
						<input type="submit" value="Create Schedule" />
					</form>
				</li>
				<li>
					<form action="<spring:url value=""/>" method="get">
						<input type="submit" value="RUD Section" />
					</form>
				</li>
				<li>
					<form action="<spring:url value=""/>" method="get">
						<input type="submit" value="RUD Schedule" />
					</form>
				</li>
			</ul>
		</security:authorize>

		<security:authorize access="hasRole('ROLE_STUDENT')">
			<ul class="nav nav-pills">
				<li>
					<form action="<spring:url value=""/>" method="get">
						<input type="submit" value="View Schedule" />
					</form>
				</li>
				<li>
					<form action="<spring:url value=""/>" method="get">
						<input type="submit" value="Register for a Section" />
					</form>
				</li>
			</ul>
		</security:authorize>

		<security:authorize access="hasRole('ROLE_FACULTY')">
			<ul class="nav nav-pills">
				<li>
					<form action="<spring:url value=""/>" method="get">
						<input type="submit" value="View Schedule" />
					</form>
				</li>
				<li>
					<form action="<spring:url value=""/>" method="get">
						<input type="submit" value="View Profile" />
					</form>
				</li>
			</ul>
		</security:authorize>

	</div>

</body>
</html>

