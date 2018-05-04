<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
사원관리 목록

<table border="1">
		<c:forEach var="result" items="${resultList }" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${result.empno}</td>
				<td><a href="/empModify.do?empno=${result.empno}">${result.ename}</a></td>
				<td>${result.job}</td>
			</tr>

		</c:forEach>
	</table>
		<button type="button" onclick="location.href='/empWrite.do'">글쓰기</button>
	
</body>
</html>