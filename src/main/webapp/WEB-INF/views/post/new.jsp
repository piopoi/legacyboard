<html>
<head>
    <title>New Post</title>
</head>
<body>
<h1>Add New Post</h1>
<form action="/posts" method="post">
    <label for="title">Title:</label>
    <input type="text" id="title" name="title">
    <label for="content">Content:</label>
    <textarea id="content" name="content"></textarea>
    <label for="memberId">Member ID:</label>
    <input type="text" id="memberId" name="memberId">
    <button type="submit">Submit</button>
</form>
</body>
</html>
