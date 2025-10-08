<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Spring Boot About this Web Application</title>

        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <noscript>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
                integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                crossorigin="anonymous">
        </noscript>

    </head>

    <body>

        <br />
        <jsp:include page="header_menu.jsp" />
        <br />

        <div class='container'>
            <div class="row">
                <div class="col-sm-6 offset-sm-3">

                    <h2>About this Web Application</h2>

                    <br />

                    Last updated: 08-10-2025

                    <br /><br />

                    <ul>

                        <li>
                            Works with Java 17
                        </li>

                        <li>
                            Spring Boot 3
                        </li>

                        <li>
                            Spring Security
                        </li>

                        <li>CSRF protection enabled</li>

                        <li>
                            Maven as build tool
                        </li>

                        <li>
                            JSP
                        </li>

                        <li>
                            JPA
                        </li>

                        <li>
                            MySQL
                        </li>

                        <li>
                            CRUD functionality
                        </li>


                        <li>
                            Learning about Spring Cookies - Take a look at SpringCookieController.java
                        </li>

                        <li>
                            Learning about Servlet Cookies - Take a look at ServletCookieController.java
                        </li>

                        <li>Try the Cookie functionality at the JSP view cookies.jsp</li>

                        <li>
                            A simple JSP file included with links for menu navigation
                        </li>

                        <li>
                            DevTools with Hot Reload when developing
                        </li>

                        <li>
                            The Web Applications is prepared to be deployed to Azure App Service using Java 17 and
                            Tomcat 10.1
                        </li>
                    </ul>

                    Things to do:

                    <ul>
                        <li>
                            Download or fork the source code from GitHub
                        </li>

                        <li>
                            Make sure that you have a MySQL Server online
                        </li>

                    </ul>



                </div>
            </div>
        </div>

    </body>

    </html>