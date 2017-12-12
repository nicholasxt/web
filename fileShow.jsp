<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%> 
<!DOCTYPE HTML> 
<html> 
<head> <title>文件上传</title> 
</head> 
    <body>
        <form name="fileUpload" action="fileUpload.jsp" method="POST" enctype="multipart/form-data">
         <p>id：<input type="text" name="id"></p>
    <p>文件名：<input type="file" name="file" size=50 value="浏览..."></p> 
    <p><input type=submit name="submit" value="OK"></p>
     </form>
    </body> 
</html>
