<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<style>
		body, input{
			font-family: Calibri, Arial;
		}
	</style>
	<title>Inscription</title>
</head>
<body>
	<h1>Page d'inscription</h1>
	
	<s:form action="createContact" method="post">
	<s:textfield name="contact.firstName" label="Prénom" size="20"/>
	<s:textfield name="contact.lastName" label="Nom" size="20"/>
	<s:textfield name="contact.emailId" label="Email (obligatoire)" size="20"/>
	<s:password name="contact.password" label="Mot de passe (obligatoire)" size="20"/>
	<s:submit value="Créer" align="left"/>
</s:form>
</body>
</html>