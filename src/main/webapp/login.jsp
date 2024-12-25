<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <style>
        .login {
            height: 180px;
            width: 230px;
            margin: 0;
            padding: 10px;
            border: 1px #CCC solid;
        }

        .login input {
            width: 100%;
            padding: 5px;
            margin: 5px;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
    <form action="${pageContext.request.contextPath}/index2" method="post">
        <div class="login">
            <h2>Login</h2>
            <input type="text" name="username" size="30" placeholder="username"/>
            <input type="password" name="password" size="30" placeholder="password"/>
            <input type="submit" value="Sign in"/>
        </div>
    </form>
</body>
</html>