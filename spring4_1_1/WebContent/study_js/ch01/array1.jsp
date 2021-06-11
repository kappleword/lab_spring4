<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배열연습</title>
</head>
<body>
<script type="text/javascript">
	const d1 = new Array();
	d1[0] = 30;
	d1[1] = "따봉이";
	d1[2] = true;
	const d2 = new Array(50, "놋북",false);
	const d3 = [70,"핸폰",true];
	const d4 = [70,"핸d폰",true];
	document.write(d1, "<br>");
	document.write(d2, "<br>");
	document.write(d3, "<br>");
	document.write(d4[1], "<br>");
</script>
</body>
</html>