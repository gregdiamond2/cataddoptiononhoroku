<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="common/header.jsp" %>
<c:set var="pageTitle" value="Select Your Cat!"/>

<body class="bodystuff">
		<title>Hello Spring MVC</title>
	
		<h1 id="centerh1" >Wow All These Cool Cats Want to Love You!</h1>
		<section class="centeredPanel">
		
			<c:url value="/resultOfCatSelection" var="formAction" />

		<form method="GET" action="${formAction}">

			<div class="form-group">

				<label for="catType"> Choose a type of cat!</label> <select name="catType"
					id="catType">
					<option value="Black cat">Black cat</option>
					<option value="British Shorthair">British Shorthair</option>
					<option value="Siamese cat">Siamese cat </option>
					<option value="Persian cat">Persian cat</option>
					<option value="Ragdoll">Ragdoll</option>
					<option value="Maine Coon">Maine Coon</option>
					<option value="Bengal cat">Bengal cat</option>
					<option value="Sphynx cat">Sphynx cat</option>
					<option value="Scottish Fold">Scottish Fold</option>
					<option value="Norwegian Forest cat">Norwegian Forest cat</option>

				</select>
			</div>
			<div class="form-group">
				<label for="catSex"> Choose Sex</label> <select
					name="catSex" id="catSex">
					<option value="true">Male</option>
					<option value="false">Female</option>
					


				</select>
			</div>
			<div class="form-group">
				<label for="catName"> What Will be your new cats name></label> <input type="text"
					name="catName" id="catName" />
			</div>
			
			<div>
				<input type="submit"
					value="selectedCat" />
			</div>
		</form>
		</section>
		
	</body>	
<%@include file="common/footer.jsp" %>