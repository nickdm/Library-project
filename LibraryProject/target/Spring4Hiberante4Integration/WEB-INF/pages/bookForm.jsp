<%--
  User: Ranga Reddy
  Date: 1/27/2015
  Time: 9:48 PM
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="noname">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Book Information</title>
    <!-- Bootstrap CSS -->
    <%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>    
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <style type="text/css">
        .myrow-container{
            margin: 20px;
        }
    </style>
</head>
<body class=".container-fluid">
    <div class="container myrow-container">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">
                    Book Details
                </h3>
            </div>
            <div class="panel-body">
                <form:form id="bookRegisterForm" cssClass="form-horizontal" modelAttribute="book" method="post" action="saveBook">
    
                    <div class="form-group">
                        <div class="control-label col-xs-3"> <form:label path="title" >Title</form:label> </div>
                        <div class="col-xs-6">
                            <form:hidden path="id" value="${bookObject.id}"/>
                            <form:input cssClass="form-control" path="title" value="${bookObject.title}"/>
                        </div>
                    </div>
    
                    <div class="form-group">
                        <form:label path="author" cssClass="control-label col-xs-3">Author</form:label>
                        <div class="col-xs-6">
                            <form:input cssClass="form-control" path="author" value="${bookObject.author}"/>
                        </div>
                    </div>
    
                    <div class="form-group">
                        <div class="control-label col-xs-3"><form:label path="publisher">Publisher</form:label></div>
                        <div class="col-xs-6">
                            <form:input cssClass="form-control" path="publisher" value="${bookObject.publisher}"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="control-label col-xs-3"><form:label path="room">Room</form:label></div>
                        <div class="col-xs-6">
                            <form:input cssClass="form-control" path="room" value="${bookObject.room}"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="control-label col-xs-3"><form:label path="shelf">Shelf</form:label></div>
                        <div class="col-xs-6">
                            <form:input cssClass="form-control" path="shelf" value="${bookObject.shelf}"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="control-label col-xs-3"><form:label path="availability">Availability</form:label></div>
                        <div class="col-xs-6">
                            <form:input cssClass="form-control" path="availability" value="${bookObject.availability}"/>
                        </div>
                    </div>
    
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-4">
                            </div>
                            <div class="col-xs-4">
                                <input type="submit" id="saveBook" class="btn btn-primary" value="Save" onclick="return submitBookForm();"/>
                            </div>
                            <div class="col-xs-4">
                            </div>
                        </div>
                    </div>
    
                </form:form>
            </div>
        </div>
    </div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
		function submitBookForm() {
			
		    // getting the book form values
		    var title = $('#title').val().trim();
		    var author = $('#author').val();
		    var publisher = $('#publisher').val();
            var room = $('#room').val();
            var shelf = $('#shelf').val();
            var availability = $('#availability').val();
		    if(title.length ==0) {
		        alert('Please enter title');
		        $('#title').focus();
		        return false;
		    }

		    if(author.length ==0) {
		        alert('Please enter author');
		        $('#author').focus();
		        return false;
		    }

            if(publisher.length ==0) {
                alert('Please enter publisher');
                $('#publisher').focus();
                return false;
            }
	
		    if(room <= 0) {
		        alert('Please enter room');
		        $('#room').focus();
		        return false;
		    }

            if(shelf <= 0) {
                alert('Please enter shelf');
                $('#shelf').focus();
                return false;
            }

            if(availability.length ==0) {
                alert('Please enter availability');
                $('#availability').focus();
                return false;
            }
		    return true;
		};	
	</script>

</body>
</html>