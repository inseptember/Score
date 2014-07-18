<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${global_lib_url }/ext3.4/resources/css/ext-all.css"/>
<script type="text/javascript" src="${global_lib_url }/ext3.4/adapter/ext/ext-base.js"></script>
<script type="text/javascript" src="${global_lib_url }/ext3.4/ext-all.js"></script>
<script type="text/javascript" src="${global_lib_url }/ext3.4/scr/local/ext-lang-zh_CN.js"></script>
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th></th>
			<th>name</th>
		</tr>
		<c:forEach items="${userList }" var="user">
			<tr>
				<td>
					<input type="checkbox" value="${user.code }"/>
				</td>
				<td>${user.name}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>