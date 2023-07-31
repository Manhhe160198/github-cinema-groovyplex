<%-- 
    Document   : forgot_password_input_email
    Created on : 30-06-2023, 17:15:18
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="/views/util/imports.jsp" %>
        <style><%@include file="/static/css/forgot_password_input_email.css" %></style>
    </head>
    <body>
        <div class="full-container">
            <div class="container">
                <form action="${pageContext.request.contextPath}/forgot" method="post">
                    <h2>Enter your Email or Username</h2>
                    <div class="input-box">
                        <!-- <label>Email</label><br> -->
                        <input class="input-area" type="text" value="inpEm" name="info" id="inpEm" placeholder="Enter your e-mail" required="">
                        <p></p>
                        <c:if test="${requestScope.errmsg != null}">
                            <p>${requestScope.errmsg}</p>
                        </c:if> 
                    </div>
                    <br>
                    <div>
                        <button type="submit" class="btn btn-primary">Continue</button>
                </form>
            </div>

            <a href="${pageContext.request.contextPath}/login" class="info">Back to Sign in</a>

        </div>
        <div class="image"><img
                src="https://images.unsplash.com/photo-1617914309185-9e63b3badfca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80">
        </div>
    </div>

</body>
</html>
