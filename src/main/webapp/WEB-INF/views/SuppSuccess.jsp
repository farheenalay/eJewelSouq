<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Supplier Registration Success</title>
</head>
<body>
<jsp:include page="adheader.jsp"></jsp:include>
    <div align="center">
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Supplier Registration Succeeded!</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3> Here are the review of your details:</h3>
                </td>
            </tr>
             <tr>
                <td>Supplier ID:</td>
                <td>${addSupp.sid}</td>
            </tr>
            <tr>
                <td>Supplier Name:</td>
                <td>${addSupp.sname}</td>
            </tr>
            <tr>
                <td>Description:</td>
                <td>${addSupp.sdescription}</td>
            </tr>
      </table>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>