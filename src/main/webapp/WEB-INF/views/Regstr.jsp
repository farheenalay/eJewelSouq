
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet'>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<style>
body {
    background-color: LightSalmon;
}

*[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    background-color: #fff;
    border-radius: 0.3em;
}

*[role="form"] h2 {
    margin-left: 5em;
    margin-bottom: 1em;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form action="register">
<div class="container">
            <form class="form-horizontal" role="form" >
                <h2>Registration Form</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Full Name</label>
                    <div class="col-sm-9">
                        <input type="text" name="username" placeholder="Full Name" class="form-control" autofocus>
                        </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input type="email" name="email" placeholder="Email" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="mobno" class="col-sm-3 control-label">Mobile No</label>
                    <div class="col-sm-9">
                        <input type="text" name="mobno" placeholder="MobileNo" class="form-control">
                    </div>
                    </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <input type="password" name="password" placeholder="Password" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of Birth</label>
                    <div class="col-sm-9">
                        <input type="date" name="dateofbirth" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Country</label>
                    <div class="col-sm-9">
                        <select id="country" class="form-control">
                            <option>India</option>
                            <option>United States Of America</option>
                            <option>Saudi Arabia</option>
                            <option>United Kingdom</option>
                            <option>Pakistan</option>
                            <option>Germany</option>
                            <option>Europe</option>
                            <option>Dubai</option>
                        </select>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <label class="control-label col-sm-3">Gender</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="Female">Female
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="Male">Male
                                </label>
                            </div>
                             </div>
                    </div>
                </div>
              </div> 
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">I accept <a href="#">terms</a>
                            </label>
                        </div>
                    </div>
                </div> 
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3" >
                        <button type="submit" class="btn btn-info btn-lg">Register<a href="rsuccess.jsp"></a></button>
                    </div>
                </div>
            </form> 
        </div> 
        <jsp:include page="footer.jsp"></jsp:include>
</form>
</body>
</html>