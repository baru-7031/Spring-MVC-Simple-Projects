<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>

	<title>Student Registration Form</title>

</head>
<body>

	<form:form action="processForm" modelAttribute="student">
		
		First Name : <form:input path="firstName" />
		
		<br><br>
		
		Last Name : <form:input path="lastName" />
		
		<br><br>
		
		Country : 
		<form:select path="country" >						
			<form:options items="${student.countryOptions}"/> <br><br>			
		</form:select>
		
		<br><br>
			
		Favorite Programming Language : <form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"/>

		<br><br>
		
		Operating System : <form:checkboxes path="operatingSystem" items="${student.operatingSystemOptions}"/>
				
		<br><br>
				
		<input type="submit" value="Submit" />
		
	</form:form>



</body>
</html>


