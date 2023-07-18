<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="name" value="learn"></c:set>
<c:out value="${name}"></c:out>
<h1> length of name is:<c:out value="${fn:length(name)}" ></c:out></h1>
<c:out value="${fn:toUpperCase(name)}" ></c:out>
<c:out value="${fn:contains(name,'rn')}" ></c:out>

</body>
</html>