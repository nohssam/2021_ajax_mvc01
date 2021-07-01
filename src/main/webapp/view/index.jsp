<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{text-align: center;}
	table{width: 600px; margin: auto;}
	table, th, td {
		border: 1px solid darkgray;
		text-align: center;
		border-collapse: collapse;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
   $(function() {
	 	$("#btn1").click(function() {
			$("#table").empty();
			$.ajax({
				url : "/MyController01",
				methode : "post",
				dataType : "text",
				success : function(data) {
					var table = "<thead>";
					table += "<tr><th>번호</th><th>이름</th><th>나이</th><th>주소</th><tr>";
					table += "</thead><tbody>";
					var people = data.split("/");
					for(var k in people){
						table +="<tr>";
						var people_info = people[k].split(",");
						for ( var y in people_info) {
								table +="<td>"+people_info[y]+"</td>";
						}
						table +="</tr>";
					}
					table +="</tbody>";
					$("#table").append(table);
					
				},
				error : function() {
					alert("읽기실패");
				}
			});
		});
	 	$("#btn2").click(function() {
			$("#table").empty();
			$.ajax({
				url : "/MyController02",
				methode : "post",
				dataType : "xml",
				success : function(data) {
					var table = "<thead>";
					table += "<tr><th>상품명</th><th>가격</th><tr>";
					table += "</thead><tbody>";
					$(data).find("product").each(function(){
						table +="<tr>";
						table +="<td>" + $(this).find("name").text()+"</td>";
						table +="<td>" + $(this).find("price").text()+"</td>";
						table +="</tr>";
					});
					
					table +="</tbody>";
					$("#table").append(table);
					
				},
				error : function() {
					alert("읽기실패");
				}
			});
		});
	 	$("#btn3").click(function() {
			$("#table").empty();
			$.ajax({
				url : "/MyController02",
				methode : "post",
				dataType : "xml",
				success : function(data) {
					var table = "<thead>";
					table += "<tr><th>상품명</th><th>가격</th><tr>";
					table += "</thead><tbody>";
					$(data).find("product").each(function(){
						table +="<tr>";
						table +="<td>" + $(this).find("name").text()+"</td>";
						table +="<td>" + $(this).find("price").text()+"</td>";
						table +="</tr>";
					});
					
					table +="</tbody>";
					$("#table").append(table);
					
				},
				error : function() {
					alert("읽기실패");
				}
			});
		});
   });
</script>
<script type="text/javascript"></script>
</head>
<body>
	<div>
		<button id="btn1">Text 정보가져오기</button>
		<button id="btn2">XML 태그 정보가져오기</button>
		<button id="btn3">XML 속성 정보가져오기</button>
		<button id="btn4">XML 태그/속성 정보가져오기</button>
		<button id="btn5">JSON 정보가져오기</button>
	</div>
	<hr>
	<div>
		<table id="table"></table>
	</div>
</body>
</html>