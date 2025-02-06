<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot Hello World</title>
</head>
<body>

<br />
<a href = "/hello" target="_top">Hello Page</a>
<br />

<h1>Login here ...</h1>

<form action="/login" method="post">
    <input type="hidden" name="{{_csrf.parameterName}}" value="{{_csrf.token}}"/>

    <div class="field">
        <div class="control">
            (user)<br />
            <input class="input is-large" type="text" placeholder="Enter username..." name="username">
        </div>
    </div>
    <br />
    <div class="field">
        <div class="control">
            (persteen1967)<br />
            <input class="input is-large" type="password" placeholder="Enter password..." name="password">
        </div>
    </div>
    <br />

    <button class="button is-block is-link is-large is-fullwidth">Login</button>
</form>



</body>
</html>