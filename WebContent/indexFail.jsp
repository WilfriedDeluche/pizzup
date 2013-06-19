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
	<s:form action="loginContact" method="post">
		<s:textfield name="contact.firstName" label="Identifiant (Prénom)" size="20"/>
		<s:password name="contact.password" label="Mot de passe" size="20"/>
		<s:submit value="Se connecter" align="center"/>
	</s:form>
</body>
</html>