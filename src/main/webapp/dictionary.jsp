<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
    <h2>Vietnamese Dictionary</h2>
    <p>á à ả ạ â ă ư ơ</p>
    <form action="${pageContext.request.contextPath}/index4" method="post">
        <input type="text" name="txtSearch" placeholder="Enter your word: "/>
        <input type="submit" id="submit" value="Search"/>
    </form>
</body>
</html>