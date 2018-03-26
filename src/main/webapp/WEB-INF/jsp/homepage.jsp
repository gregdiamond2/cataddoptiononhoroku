<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:set var="pageTitle" value="Home Page"/>
<%@include file="common/header.jsp" %>

<body class="bodystuff">
		<title>Hello Spring MVC</title>
		
		
	
<meta http-equiv="Refresh" content="5">
		
		
		<h1 id="centerh1">Here are the Cats <c:out value="${cats.size()}" /> we have to offer for your to love! click bellow to get started.</h1>
		
		<td><c:url var="catDetailsUrl" value="/selectionOfCats">
					<center>	<a href="${catDetailsUrl}" >Post a Message </a></center>
					
				
				</c:url>
		<table>
		
		<c:forEach var="allCats" items="${randCat}">
		<tr>
			
			
					<img class="catimg" src="${allCats.animalImage}" alt="Start Savings" width="500" height="600">

			</tr>

	</c:forEach>
</table>
		
		<div class="test2" > 
		<a href="${catDetailsUrl}" > <c:url value="/img/Sleeping-Cat-Button.png" var="picture1" /> <img src="${picture1}"  id="test" /> </a>
		</div>
		
		</body>
<%@include file="common/footer.jsp" %>