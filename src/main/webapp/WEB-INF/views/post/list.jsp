<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>List - Post</title>
</head>
<body>
<h1>Posts</h1>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>title</th>
        <th>content</th>
        <th>member id</th>
        <th>created at</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="post" items="${posts}">
        <tr onclick="viewPost(${post.id})">
            <td>${post.id}</td>
            <td>${post.title}</td>
            <td>${post.content}</td>
            <td>${post.memberId}</td>
            <td>${post.createdAt}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<button type="button" onclick="registerForm()">Add New Post</button>
</body>
</html>
<script>
    function registerForm() {
        window.location.href = '/posts/registerForm';
    }

    function viewPost(postId) {
        window.location.href = '/posts/' + postId;
    }
</script>
