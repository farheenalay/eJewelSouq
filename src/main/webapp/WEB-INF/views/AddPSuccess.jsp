<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product Success</title>
</head>
<body>

<div align="center">
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Product Added Successfully</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3> These are your Product details: </h3>
                </td>
            </tr>
            <tr>
                <td>Product Id:</td>
                <td>${addProd.pid}</td>
            </tr>
            <tr>
                <td> Product Name: </td>
                <td>${addProd.pname}</td>
            </tr>
             <tr>
                <td> Description: </td>
                <td>${addProd.des}</td>
            </tr>
             <tr>
                <td> Quantity: </td>
                <td>${addProd.qty}</td>
            </tr>
             <tr>
                <td> Price: </td>
                <td>${addProd.pprice}</td>
            </tr>
             <tr>
                <td> Manufacturing Date: </td>
                <td>${addProd.mfgdate}</td>
            </tr>
            
           
 
        </table>
    </div>

</body>
</html>