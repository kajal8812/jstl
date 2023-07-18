<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL</title>
</head>
<body>
<h1>This is JSTL Example</h1>
<!-- set tag:to create variables -->
<c:set var="i" value="23" scope="application"></c:set>
<!-- out tag:printing -->
<h1><c:out value="${i}"></c:out></h1>
<!-- remove tag:to remove variables -->
 <%--  <c:remove var="i"></c:remove> --%>
<h1><c:out value="${i}">Variable has been removed</c:out></h1>

<hr>
<!-- if tag:to check condition -->
<c:if test="${i == 23}" >
<h1>yes  condition is true</h1>
</c:if>

<!-- choose,when,otherwise tag:works as switch stmt in java -->

<c:choose>
<c:when test="${i>0 }">
<h1>this is case:1</h1>
<h1>i is positive</h1>
</c:when>
<c:when test="${i<0 }">
<h1>this is case:2</h1>
<h1>i is negative</h1>
</c:when>
<c:otherwise>
<h1>this is default case</h1>
<h1>i is 0</h1>
</c:otherwise>
</c:choose>


<!-- foreach: used for repeating and traversing the loop -->

<c:forEach var="i" begin="1" end="10" >
<h1>value of i is: <c:out value="${i}"></c:out></h1>
</c:forEach>

 <c:url var="myurl" value="https://www.google.com/search">

<c:param name="q" value="fb"></c:param>

</c:url>
<h1><c:out value="${myurl}"></c:out></h1>

<c:redirect url="${myurl}"></c:redirect>


<%! int a=5; %>
<% out.print(a); %>

</body>
</html>