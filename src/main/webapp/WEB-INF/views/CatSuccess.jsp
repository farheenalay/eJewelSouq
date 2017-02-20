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
                <td colspan="2" align="center"><h2>Category Added Successfully!</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3> Details of Category: </h3>
                </td>
            </tr>
            <tr>
                <td>Category ID:</td>
                <td>${addCat.cid}</td>
            </tr>
            <tr>
                <td>Product Name:</td>
                <td>${addCat.cname}</td>
            </tr>
             <tr>
                <td>Description:</td>
                <td>${addCat.catdes}</td>
            </tr>
      </table>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>