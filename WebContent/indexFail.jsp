<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<style>
		body, input{
			font-family: Calibri, Arial;
		}
	</style>
	<title>Login</title>
</head>
<body>
	<h1>L'identifiant ou le mot de passe est incorrect.</h1>
	<jsp:include page="LoginForm.jsp" />
</body>
</html>