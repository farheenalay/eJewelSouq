<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product Success</title>
</head>
<body>
<jsp:include page="adheader.jsp"></jsp:include>
 <div align="center">
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Product Added!</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3> Details of your Product: </h3>
                </td>
            </tr>
            <tr>
                <td>Product ID:</td>
                <td>${addProd.id}</td>
            </tr>
            <tr>
                <td>Product Name:</td>
                <td>${addProd.name}</td>
            </tr>
             <tr>
                <td>Description:</td>
                <td>${addProd.description}</td>
            </tr>
             <tr>
                <td>Quantity:</td>
                <td>${addProd.quantity}</td>
            </tr>
             <tr>
                <td>Product Price:</td>
                <td>${addProd.price}</td>
            </tr>
             <tr>
                <td>Manufacturing Date:</td>
                <td>${addProd.mfg}</td>
            </tr>
           
 
        </table>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>