<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <title>도서 상세 정보</title>
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
            <h1 class="display-3">도서 정보</h1>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3>${book.name}</h3>
                <p>${book.description}</p>
                <br>
                <p><b>도서코드 : </b><span class="badge badge-info">${book.bookId}</span>
                <p><b>저자</b> : ${book.author}
                <p><b>출판사</b> : ${book.publisher}
                <p><b>출판일</b> : ${book.releaseDate}
                <p><b>분류</b> : ${book.category}
                <p><b>재고수</b> : ${book.unitsInStock}
                <br>
                <p><a href="#" class="btn btn-primary">도서주문 &raquo;</a>
                <a href="<c:url value="/books/"/>" class="btn btn-secondary">도서 목록 &raquo;</a>
            </div>
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