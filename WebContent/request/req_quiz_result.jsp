<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%	
    	request.setCharacterEncoding("UTF-8");
    	String name = request.getParameter("name");
    	int kor = Integer.parseInt(request.getParameter("kor"));
    	int math = Integer.parseInt(request.getParameter("math"));
    	int eng = Integer.parseInt(request.getParameter("eng"));
    	int total = kor+math+eng;
    	double avg = total/3.0;
    	String result = String.format("%.2f",avg);
    	
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름:<%=name %><br/>
	국어점수:<%=kor%><br/>
	수학점수:<%=math %><br/>
	영어점수:<%=eng %><br/>
	총점:<%=total %><br/>
	평균:<% out.print(result);%><br/>
	<%if(avg>=80){
		out.println("고득점");
	}else if(avg>=60)
		{out.println("중간");}
	else
		out.println("저득점");
	
		%>
	
	
</body>
</html>