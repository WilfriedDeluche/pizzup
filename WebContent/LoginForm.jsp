<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:form action="loginContact" method="post">
		<s:textfield name="contact.emailId" label="Email" size="20"/>
		<s:password name="contact.password" label="Mot de passe" size="20"/>
		<s:submit value="Se connecter" align="center"/>
	</s:form>