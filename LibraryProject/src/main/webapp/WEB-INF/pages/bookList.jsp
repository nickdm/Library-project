<%--
  User: Ranga Reddy
  Date: 1/27/2015
  Time: 9:52 PM
  --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target=".navbar-collapse">
                <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="getAllBooks">LibraryProject</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="getAllBooks">Home</a></li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>
<html>
<head>
    <br><br>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Books List</title>
    <!-- Bootstrap CSS -->
    <%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <style type="text/css">
        .myrow-container {
            margin: 20px;
        }
    </style>
</head>
<body class=".container-fluid">
<div class="container myrow-container">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">
                <div align="left"><b>Welcome to the book catalog!</b> </div>
            </h3>
        </div>
        <div class="panel-body">
            <c:if test="${empty bookList}">
                There are no Books with this search key
            </c:if>
            <c:if test="${not empty bookList}">
            <div class="well">
            	<form action="searchBook">
            		<div class="row">
					  <div class="col-md-4">Search Books: <input type='text' name='searchName' id='searchName'/> </div>
					  <div class="col-md-4"><input class="btn btn-success" type='submit' value='Search'/></div>
					</div>
            	</form>
                <div align="right"><a href="createBook">Add New Book</a></div>
            </div>
                <table class="table table-hover table-bordered">
                    <thead style="background-color: #9fb7b2;">
                    <tr>
                        <th>Id</th>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Publisher</th>
                        <th>Room</th>
                        <th>Shelf</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="emp" items="${bookList}">
                        <tr class=${emp.status}>
                        	<th><c:out value="${emp.id}"/></th>
                        	<th><c:out value="${emp.title}"/></th>
                        	<th><c:out value="${emp.author}"/></th>
                        	<th><c:out value="${emp.publisher}"/></th>
                            <th><c:out value="${emp.room}"/></th>
                            <th><c:out value="${emp.shelf}"/></th>
                            <th><a href="editBook?id=<c:out value='${emp.id}'/>">Edit</a></th>
                        	<th><a href="deleteBook?id=<c:out value='${emp.id}'/>">Delete</a></th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>    
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
    <%-- <script src="<c:url value="/resources/js/jquery-2.1.3.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
     --%>

</body>
</html>