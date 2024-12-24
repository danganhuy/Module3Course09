<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product</title>
</head>
<body>

    <h2>Currency Converter</h2>
    <form action="${pageContext.request.contextPath}/index5" method="post">
        <label>Product description: </label><br/>
        <input type="text" name="description" placeholder="description" value=""/><br/>
        <label>List price: </label><br/>
        <input type="text" name="price" placeholder="price" value=""/><br/>
        <label>Discount percent: </label><br/>
        <input type="text" name="discount" placeholder="percent" value=""/><br/>
        <input type="submit" id="submit" value="Converter"/>
    </form>
</body>
</html>
