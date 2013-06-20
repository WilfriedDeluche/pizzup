<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<style>
		body, input{
			font-family: Calibri, Arial;
		}
		table#pizza {
			border-collapse: collapse;
			width:800px;
		}
		th, td {
			padding: 8px 10px 4px;
		}
		th {
			height: 35px;
			background-color: #DEDEDE;
		}
		td {
			font-size: 14px;
		}
		
		td.total {
			text-align: right;
		}
		
		.bold {
			font-weight: bold;
		}
		
		.custom-pizza {
			background-color: #5F79C7;
			margin-left: -8px;
		    margin-right: -8px;
		    padding: 20px 30px 10px;
		}
		
		#addPizza {
			border: 1px solid #DEDEDE;
		    border-radius: 9px 9px 9px 9px;
		    float: left;
		    margin-right: 10px;
		    text-align: center;
		    width: 180px;
		}
		
		#addPizza span {
			display: inline-block;
		    line-height: 14px;
		    padding-top: 10px;
		}
		
		#addPizza table {
			width: 100%;
		}
		
		input[type="submit"] {
			font-size: 13px;
			cursor: pointer;
		}
		
		#deconnexion, #main {
			float: right;
		}
	</style>
	<title>Pizza composée</title>
</head>
<body>

<s:form action="main" method="post">
	<s:submit value="Page d'accueil" align="center"/>
</s:form>

<h1>PIZZ'UP</h1>

<h2>Ma Pizza Personalisée</h2>
<s:actionerror/>

<div class="custom-pizza">

	<s:form action="createPizza" method="post">
		<s:select label="Ajouter un ingredient" 
			headerKey="0" headerValue="Selectionnez votre ingredient"
			list="ingredientsList" 
			name="pizza.ingredient1" />
		<s:select label="Ajouter un ingredient" 
			headerKey="0" headerValue="Selectionnez votre ingredient"
			list="ingredientsList" 
			name="pizza.ingredient2" />
		<s:select label="Ajouter un ingredient" 
			headerKey="0" headerValue="Selectionnez votre ingredient"
			list="ingredientsList" 
			name="pizza.ingredient3" />
		<s:hidden name="pizza.basePrice" value="3"></s:hidden>
		<s:hidden name="pizza.name" value="Pizza personnalisee"></s:hidden>
		<s:submit value="Creer ma pizza" align="center"/>
	</s:form>
	<span>+ prix de la garniture (3€)</span>

</div>

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

<s:set var="sumTotal" value="0" />
<s:set var="total" value="0"/>
	
	<s:iterator value="pizzaList" var="pizza">
		<tr>
			<s:set var="total" value="#pizza[0].ingredient1Class.price + #pizza[0].ingredient2Class.price + #pizza[0].ingredient3Class.price + #pizza[0].basePrice" />
			
			<td class="bold"><s:property value="#pizza[0].name"/></td>
			<td><s:property value="#pizza[0].ingredient1Class.name"/></td>
			<td><s:property value="#pizza[0].ingredient2Class.name"/></td>
			<td><s:property value="#pizza[0].ingredient3Class.name"/></td>
			<td><s:property value="#total"/> €</td>
			<td><a href="deletePizzaCustom?id=<s:property value="#pizza[0].id"/>"><img src="http://socialprofiles.zenfs.com/images/585a5509e64b18c3a86df8040108997d_48.png" width="17" height="17" title="Supprimer" /></a></td>
			
			<s:set var="sumTotal" value="#sumTotal + #total" />
		</tr>	
	</s:iterator>
	<tr>
		<td class="bold total" colspan="4">TOTAL DU PANIER</td>
		<td class="bold"><s:property value="#sumTotal"/> €</td>
		<td><a href="viderPanier2"><img src="http://kr.cdn4.123rf.com/168nwm/ratoca/ratoca1110/ratoca111000257/10985626-paying-hand-icon.jpg" width="21" height="19" title="Encaisser" /></a></td>
	</tr>

</table>
</body>
</html>