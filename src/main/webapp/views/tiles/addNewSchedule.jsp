<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
body {
	font-size: 16px;
}
</style>
</head>
<body>

	<jsp:include page='home.jsp'>
		<jsp:param name="articleId" value="" />
	</jsp:include>

	<h1>Add New Schedule</h1>
	<form:form modelAttribute="newSchedule" method="post">
		<table>
			<tr>
				<td>Entry Name</td>
				<td><form:input path="name" type="text" /></td>
				<td><form:errors path="name" cssStyle="color:red;"></form:errors>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<button>Create Schedule</button>
				</td>
			</tr>
		</table>
	</form:form>

	<h1>Schedule List</h1>
	Schedule
</body>
</html>
