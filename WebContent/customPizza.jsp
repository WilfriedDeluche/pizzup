<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<style>
		body, input{
			font-family: Calibri, Arial;
		}
		table#contact {
			border-collapse: collapse;
			width:550px;
		}
		th {
			height: 40px;
			background-color: #ffee55;
		}
	</style>
	<title>Pizza composée</title>
</head>
<body>

<h1>Ma Pizza Personalisée</h1>
<s:actionerror/>

<s:form action="main" method="post">
	<s:submit value="Page d'accueil" align="center"/>
</s:form>

<s:form action="createPizza" method="post">
	<s:select label="Ajouter un ingredient" 
		headerKey="0" headerValue="Selectionnez votre ingredient"
		list="ingredientsList" 
		name="pizza.ingredient1" />
	<s:select label="Ajouter un ingredient" 
		headerKey="-1" headerValue="Selectionnez votre ingredient"
		list="ingredientsList" 
		name="pizza.ingredient2" />
	<s:select label="Ajouter un ingredient" 
		headerKey="-1" headerValue="Selectionnez votre ingredient"
		list="ingredientsList" 
		name="pizza.ingredient3" />
	<s:hidden name="pizza.basePrice" value="3"></s:hidden>
	<s:hidden name="pizza.name" value="Pizza personnalisee"></s:hidden>
	<s:submit value="Creer ma pizza" align="center"/>
</s:form>
+ prix de la garniture (3€)


<h2>Panier</h2>

<table id="pizza" border="1">
<tr>
	<th>Nom</th>
	<th>Ingredient 1</th>
	<th>Ingredient 2</th>
	<th>Ingredient 3</th>
	<th>Total</th>
	<th>Supprimer</th>
</tr>
<s:iterator value="pizzaList" var="pizza">
	<tr>
		<td><s:property value="#pizza[0].name"/></td>
		<td><s:property value="#pizza[0].ingredient1Class.name"/></td>
		<td><s:property value="#pizza[0].ingredient2Class.name"/></td>
		<td><s:property value="#pizza[0].ingredient3Class.name"/></td>
		<td><s:property value="#pizza[0].ingredient1Class.price + #pizza[0].ingredient2Class.price + #pizza[0].ingredient3Class.price + #pizza[0].basePrice"/> €</td>
		<td><a href="deletePizza?id=<s:property value="#pizza[0].id"/>">supprimer</a></td>
	</tr>	
</s:iterator>
</table>
</body>
</html>