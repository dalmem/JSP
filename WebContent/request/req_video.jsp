<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!--  <iframe src="https://www.google.com">동영상, 이미지 등 다른 페이지의 컨텐츠를 가져와서 사용할수 있다 
	</iframe>-->
	<div align="center">
		<table border="9">
				<tr>
					<th>이미지</th>
					<th>강의명</th>
					<th>내용</th>
					<th>일자</th>
				</tr>
				<tr>
					<td>
						<a href="req_video_ok.jsp?name=java">
							<img src="img/java.png" height="100px", width="150px"></img>
						</a>
					</td>
					<td>자바</td>
					<td><a href="req_video_ok.jsp?name=java">자바의 기본내용을 학습</a></td>
					<td>2020.01.02</td>
					
				</tr>
				<tr>
					
					<td>
						<a href="req_video_ok.jsp?name=jscript">
						<img src="img/javascript.png" height="100px", width="150px"></img>
						</a>
					</td>
					
					<td>자바스크립트</td>
					<td><a href="req_video_ok.jsp?name=jscript">자바스크립트 Basic</a></td>
					<td>2020.02.12</td>
					
				</tr>
				<tr>
					<td>
						<a href="req_video_ok.jsp?name=oracle">
						<img src="img/oracle.png" height="100px", width="150px"></img>
						</a>
					</td>
					<td>오라클</td>
					<td><a href="req_video_ok.jsp?name=oracle">오라클문법 학습</a></td>
					<td>2020.03.14</td>
					
				</tr>
			
		</table>
	</div>
</body>
</html>