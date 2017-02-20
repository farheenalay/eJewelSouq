<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Product</title>
</head>
<body>

<div align="center">
        <form:form action="" method="post" commandName="addProd">
            <table border="0">
                <tr>
                    <td colspan="3" align="center"><h2>Product Registration</h2></td>
                </tr>
                <tr>
                    <td>Product ID :</td>
                    <td><form:input path= "pid" /></td>
                </tr>
                <tr>
                    <td>Product Name :</td>
                    <td><form:input path= "pname" /></td>
                </tr>
                <tr>
                    <td>Description :</td>
                    <td><form:input path= "des" /></td>
                </tr>
                <tr>
                    <td>Quantity :</td>
                    <td><form:input path= "qty" /></td>
                </tr>
                <tr>
                    <td>Price :</td>
                    <td><form:input path= "pprice" /></td>
                </tr>
                <tr>
                    <td>Manufacturing Date :</td>
                    <td><form:input path= "mfgdate" /></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Add Product" /></td>
                </tr>
            </table>
        </form:form>
    </div>

</body>
</html>