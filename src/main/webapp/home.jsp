<%@ page import="com.entities.User" %>
<%
User user = (User)session.getAttribute("usr-obj");
if(user ==null){
session.setAttribute("login-msg", "Please Login First...");
response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset ="ISO-8859-1">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>




<body style="background-image: linear-gradient(to right top, #aca7ac, #807f86, #565a61, #2e373d, #09181a); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="#">Navbar</a>
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
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>


<!-- Navbar End -->
<!-- Container Start -->

<div class="container">
<div class="row mt-4 d-flex justify-content-center align-items-center">
<div class="col-md-6">
<div class="card">

<%
    User user1 = (User)session.getAttribute("usr-obj");


    if(user1 != null){%>
<div class="card-body">
<h1> Name : <%= user1.getName() %></h1>
<h1> Email : <%= user1.getEmail() %></h1>
<div class="container text-center">
<a href="logoutServlet"  class="btn btn-primary btn-lg text-white">Logout</a>
</div>
</div>
<% }%>
</div>
</div>
</div>
</div>

</body>
</html>