<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Update Form - Post</title>
</head>
<body>
<h1>Update Post</h1>
<form id="updateForm" action="/posts/update" method="post">
    <table>
        <tr>
            <th>ID</th>
            <td><input type="text" name="id" value="${post.id}" readonly></td>
        </tr>
        <tr>
            <th>Title</th>
            <td><input type="text" name="title" value="${post.title}"></td>
        </tr>
        <tr>
            <th>Content</th>
            <td><textarea name="content">${post.content}</textarea></td>
        </tr>
        <tr>
            <th>Member ID</th>
            <td><input type="text" name="memberId" value="${post.memberId}" readonly></td>
        </tr>
    </table>
    <button type="submit">Update</button>
    <button type="button" onclick="cancel()">Cancel</button>
</form>
</body>
</html>
<script>
    function cancel() {
        window.location.href = "/posts";
    }
</script>
