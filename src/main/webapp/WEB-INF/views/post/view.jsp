<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>View - Post</title>
</head>
<body>
<h1>Posts</h1>
<form id="form">
    <input type="hidden" id="id" name="id" value="<c:out value='${post.id}'/>">
    <table>
        <tr>
            <th>ID</th>
            <td>${post.id}</td>
        </tr>
        <tr>
            <th>Title</th>
            <td>${post.title}</td>
        </tr>
        <tr>
            <th>Content</th>
            <td>${post.content}</td>
        </tr>
        <tr>
            <th>Member ID</th>
            <td>${post.memberId}</td>
        <tr>
            <th>Created At</th>
            <td>${post.createdAt}</td>
        </tr>
    </table>
</form>
<button type="button" id="updateBtn">update</button>
<button type="button" id="deleteBtn">delete</button>
<button type="button" id="listBtn">list</button>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
    $(document).ready(function () {
        let formEl = $("#form");

        //List Button
        $("#listBtn").on("click", function (e) {
            window.location.href = "/posts";
        });

        //Update Button
        $("#updateBtn").on("click", function (e) {
            // e.preventDefault();
            formEl.attr("action", "/posts/updateForm").attr("method", "get");
            formEl.submit();
        });

        //Delete Button
        $("#deleteBtn").on("click", function (e) {
            // e.preventDefault();
            if (!confirm("정말 삭제하시겠습니까?")) {
                return false;
            }
            formEl.attr("action", "/posts/delete").attr("method", "post");
            formEl.submit();
        });
    });
</script>
</html>
