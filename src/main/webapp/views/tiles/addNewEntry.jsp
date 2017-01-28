<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
body {
    font-size: 16px;
}
</style>
</head>
<body>

<jsp:include page='home.jsp'>
    <jsp:param name="articleId" value=""/>
</jsp:include>

<h1>Add New Entry</h1>
<form:form modelAttribute="newEntry" method="post">
	<table >
	
		<tr>
			<td>Entry Name</td>
			<td><form:input path="ename" type="text" /></td>
			<td><form:errors path="ename" cssStyle="color:red;"></form:errors>
			</td>
		</tr>
		<tr>
			<td>Entry Year </td>
			<td><form:input path="eyear" type="text" /></td>
			<td><form:errors path="eyear" cssStyle="color:red;"></form:errors>
			</td>			
		</tr>
		<tr>
			<td>Number of Students </td>
			<td><form:input path="nostudents" type="text" /></td>
			<td><form:errors path="nostudents" cssStyle="color:red;"></form:errors>
			</td>			
		</tr>
		<tr>
			<td></td>
			<td>
				<button>Save</button>
			</td>
		</tr>
	
	</table>
</form:form>

<h1>Entry List </h1>
<table class="table table-hover">
 <thead>
	<tr>
		<td>Entry Name</td>
		<td>Entry Year</td>
		<td>Number of Students</td>
		<td>&nbsp;</td>

	</tr>
	</thead>
	<c:forEach var="entry" items="${entrylist}">
	   <tbody>
		<tr>
			
			<td>${entry.ename}</td>

			<td>${entry.eyear}</td>
			
			<td>${entry.nostudents}</td>

			


			<td><a href="<spring:url value="/entry/edit/${entry.id}"/>">Edit</a> | <a
				href="<spring:url value="/entry/delete/${entry.id}"/>">Delete</a></td>

		</tr>
		</tbody>
	</c:forEach>
</table>
</body>
</html>
