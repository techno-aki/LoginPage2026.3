<%@ page import="java.sql.Connection" %>
<%@ page import="com.db.DBConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset ="ISO-8859-1">
    <title>Login Page</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">


<body style="background-image: linear-gradient(to right top, #aca7ac, #807f86, #565a61, #2e373d, #09181a); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">

<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
<a class="navbar-brand" href="index.jsp">
    <img src="<%= request.getContextPath() %>/images/appleLogo.png" alt="Logo">
</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">Login</a>
      </li>
 <li class="nav-item">
        <a class="nav-link" href="register.jsp">Register</a>
      </li>

    </ul>
  </div>
</nav>


<!-- Navbar End -->

<div class="container">
<div class="row mt-4">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-header text-center c-head text-white">
<i class="fa fa-user-circle-o fa-2x"></i>
<h5>Login Page</h5>
</div>

<%
     String LogoutMsg = (String) session.getAttribute("logout-msg");

if(LogoutMsg != null){%>

<div class="alert alert-success" role="alert">Logout Successful</div>
<%
session.removeAttribute("logout-msg");
}%>

<% String ERmsg = (String)session.getAttribute("error-msg");
if(ERmsg != null)
{%>
<div class="alert alert-danger" role="alert">
  <%= ERmsg%>
</div>
<%
session.removeAttribute("error-msg");
}%>

<div class="card-body">
<form action="loginServlet" method="post">

  <div class="form-group">
    <label for="exampleInputEmail1">Enter Email Address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">

  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="password">
  </div>

  <button type="submit" class="btn btn-primary btn-block badge-pill">Submit</button>
</form>
</div>
</div>



</body>
</html>