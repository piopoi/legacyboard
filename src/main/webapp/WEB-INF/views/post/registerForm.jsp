<html>
<head>
    <title>register Form - Post</title>
</head>
<body>
<h1>Add New Post</h1>
<form id="registerForm" action="/posts" method="post">
    <table>
        <tr>
            <th>Title</th>
            <td><input type="text" name="title"></td>
        </tr>
        <tr>
            <th>Content</th>
            <td><textarea name="content"></textarea></td>
        </tr>
        <tr>
            <th>Member ID</th>
            <td><input type="text" name="memberId"></td>
        </tr>
    </table>
    <button type="submit">Register</button>
    <button type="button" onclick="cancel()">Cancel</button>
</form>
</body>
</html>
<script>
    function cancel() {
        window.location.href = "/posts";
    }
</script>
