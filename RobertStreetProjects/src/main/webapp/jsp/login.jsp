<%-- 
    Document   : login
    Created on : Oct 27, 2017, 8:50:06 AM
    Author     : kylecaaspers
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log In</title>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">        
        <link href="${pageContext.request.contextPath}/css/Home.css" rel="stylesheet">
        <style>
            .textInput{
                width: 400px;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid navbar" >
            <div id="header">
            </div>
        </div>
        <div class="container" id="margin">
            <h3>Sign In</h3>
            <form class="form-horizontal" role="form" method="post" action="j_spring_security_check">
                <div class="form-group">
                    <label for="j_username" class="col-md-4 control-label">Username:</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" name="j_username" placeholder="Username"/>
                    </div>
                    <label for="j_password" class="col-md-4 control-label">Password:</label>
                    <div class="col-md-8">
                        <input type="password" class="form-control" name="j_password" placeholder="Password"/>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-4 col-md-8">
                            <input type="submit" class="btn btn-default" id="search-button" value="Sign In"/>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div id="footer">  
        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/loadHeader.js"></script>

    </body>
</html>
