<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <title>도서 목록</title>
</head>
<body>
    <nav class="navbar navbar-expand navbar-dark bg-dark">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="../home">Home</a>
            </div>
        </div>
    </nav>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">도서 목록</h1>
        </div>
    </div>
    <div class="container">
        <div class="row" align="center">
            <c:forEach items="${bookList}" var="book">
                <div class="col-md-4">
                    <h3>${book.name}</h3>
                    <p>${book.author}
                        <br>${book.publisher} | ${book.releaseDate}
                    <p align="left">${fn:substring(book.description, 0, 100)}...
                    <p>${book.unitPrice}원
                    <p><a href="<c:url value="/books/book?id=${book.bookId}"/>"
                        class="btn btn-Secondary" role="button">상세정보 &raquo;</a>
                </div>
            </c:forEach>
        </div>
    </div>
    <footer class="container">
        <hr/>
        <p>
            &copy;WebMarket
        </p>
    </footer>
</body>
</html>