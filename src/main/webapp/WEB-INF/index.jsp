<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Dojo Survey</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class= "container">
	<form method="POST" action="/submit">
		<label class="input"><b>Name:</b> <input type="text" name="name"></label>
		<label class="input"><b>Dojo Location:</b> 
			<select name= "location">
				<option value="San Jose">San Jose</option>
				<option value="Seattle">Seattle</option>
				<option value="Burbank">Burbank</option>
				<option value="Chicago">Chicago</option>
			</select>
		</label>
		<label class="input"><b>Favorite Language: </b>
			<select name="language">
				<option value="Python">Python</option>
				<option value="JavaScript">JavaScript</option>
				<option value="Java">Java</option>
				<option value="HTML/CSS">HTML/CSS</option>
			</select>
		</label>
		<label class="input"><b>Comment (optional):</b><textarea name= "comment"></textarea></label>
		<input type="submit">
	
	</form>
</div>	
</body>
</html>