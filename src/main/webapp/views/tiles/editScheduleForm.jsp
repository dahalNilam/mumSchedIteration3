<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
body {
    font-size: 16px;
}
</style>
</head>

<jsp:include page='home.jsp'>
    <jsp:param name="articleId" value=""/>
</jsp:include>

<h1>Edit Schedule</h1>
<form:form modelAttribute="editSchedule" method="post">
	<table >
	
		<tr>
			<td>Schedule Name</td>
			<td><form:input path="cname" type="text" value="Schedule"/></td>
			<td><form:errors path="cname" cssStyle="color:red;"></form:errors>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<button>Update</button>
			</td>
		</tr>
	
	</table>
</form:form>

<h1>Schedule Details </h1>
<table class="table table-hover">
 <thead>
	<tr>
		<td>Schedule Name</td>
		<td>Schedule Number</td>
	</tr>
	</thead>
	   <tbody>
		<tr>
			<td></td>
			<td></td>
		</tr>
		</tbody>
</table>