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

<h1>Add New Course</h1>
<form:form modelAttribute="editCourse" method="post">
	<table >
	
		<tr>
			<td>Course Name</td>
			<td><form:input path="cname" type="text" value="${editCourse.cname}"/></td>
			<td><form:errors path="cname" cssStyle="color:red;"></form:errors>
			</td>
		</tr>
		<tr>
			<td>Course Number </td>
			<td><form:input path="cnumber" type="text" value="${editCourse.cnumber}"/></td>
			<td><form:errors path="cnumber" cssStyle="color:red;"></form:errors>
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

<h1>Course Details </h1>
<table class="table table-hover">
 <thead>
	<tr>
		<td>Course Name</td>
		<td>Course Number</td>
		<td>&nbsp;</td>

	</tr>
	</thead>
	<c:forEach var="course" items="${courselist}">
	   <tbody>
		<tr>
			
			<td>${course.cname}</td>

			<td>${course.cnumber}</td>

			


			<td><a href="<spring:url value="/course/edit/${course.id}"/>">Edit</a> | <a
				href="<spring:url value="/course/delete/${course.id}"/>">Delete</a></td>

		</tr>
		</tbody>
	</c:forEach>
</table>