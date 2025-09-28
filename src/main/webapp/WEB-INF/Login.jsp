<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
<p>This is a Login Page!</p>
<form action="<%= request.getContextPath() %>/LoginServlet?page=member" method="post">
<input type="hidden" name="page" value="member">

<label for="uname">User Name :</label>
<input type="text" name= "username" id="uname" placeholder="enter your name..." required><br><br>

<label for="pwd">Password :</label>
<input type="password" name="password" id="pwd" placeholder="enter your password..." required><br><br>

<label for="age">Age :</label>
<input type="number" name="age" id="age" placeholder="enter your age..." required><br><br>

<label>Gender : 
<input type="radio" name="gender" value="Male" checked>Male
</label>
<label>
<input type="radio" name="gender" value="Female">Female
</label>
<br>
<br>

<label>Hobbies :
<input type="checkbox" name="hobbies" value="reading" checked>Reading<br>
</label>
<label>
<input type="checkbox" name="hobbies" value="sports">Sports<br>
</label>
<label>
<input type="checkbox" name="hobbies" value="music">Music<br>
</label>
<br>

<label for="country">Country :</label><br>
<select name="country" id="country">
<option value="india">India</option>
<option value="japan">Japan</option>
<option value="usa">USA</option>
<option value="korea">Korea</option>
</select>
<br>
<br>

<input type="submit" value="Submit">
<input type="reset" value="Clear">
<br>
</form>
<br>
<a href = "<%= request.getContextPath() %>/TestServlet?page=home">Home Page</a>
<br>
</body>
</html>