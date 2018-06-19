<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="pl">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">




<title>Rejestracja</title>

<!-- Bootstrap core CSS -->
<link
	href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">

<link
	href=<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>

<!-- Plugin CSS -->
<link
	href="<c:url value="/resources/vendor/magnific-popup/magnific-popup.css" />"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/creative.min.css"/>"
	rel="stylesheet">

</head>




<div class="container">
	<div class="row">
		<div class="col-lg-12 text-center">
			<hr>
			<a href="<c:url value="/"/>">
				<p>Wróć do strony głównej
			</a>
			</p>

			<hr>
			<a href="<c:url value="/"/>">
				<p>Zapisz się na szkolenie
			</a>
			</p>
			<hr>
		</div>
	</div>
</div>

<section id="services">
    <div class="container">
        <div class="col-lg-13 col-lg-offset-2 text-center">
            <h1 class="section-heading">Zarejestruj się</h1>
            <p>Uzupełnij poniższe pola aby się zarejestrować</p>
            <hr class="primary">
        </div>
    </div>
<div class="container col-md-6 col-md-offset-3">


    
<form:form method="post" modelAttribute="userRegistration">
	
	<div class="form-group">
                <label  for="username">Login:</label><form:errors path="username" cssStyle="color: red;" />
                <form:input placeholder="np: jakasia" path="username" id="username" cssClass="form-control" />
</div>

	<div class="form-group">
                <label  for="password">Hasło:</label><form:errors path="password" cssStyle="color: red;" />
                <form:input placeholder="***" path="password" id="password" cssClass="form-control" />
</div>

<div class="form-group">
                <label  for="email">Email</label><form:errors path="email" cssStyle="color: red;" />
                <form:input placeholder="maria@wp.pl" path="email" id="email" cssClass="form-control" />
</div>
	 <br>
            <div class="col-lg-13 col-lg-offset-2 text-center">
                <input type="submit" value="Zarejestruj" class="btn btn-success" />
                <a href="<c:url value="/adminPanel/szkolenia" />" class="btn btn-primary">Anuluj</a>
</div>
	
	
	</form:form>




</div>
</section>
<%@ include file="/WEB-INF/views/templates/footer.jsp"%>