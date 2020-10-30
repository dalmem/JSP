<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% /*

	앞에서 넘어온 폼값을 받아서 평균을 구합니다
	평균이 60이상이면 score_quiz03으로 이동해서 평균과 이름을 출력
	평균이 60이하면 score_quiz04로 이동해서 "~님은 불합격입니다"
	
	조건:세션 사용 x
*/ 
	String name = request.getParameter("name");
	double kor =Double.parseDouble(request.getParameter("kor"));
    double eng = Double.parseDouble(request.getParameter("eng"));
    double math = Double.parseDouble(request.getParameter("math"));
    double total = kor+eng+math;
    double avg = (int)((total/3.0)*100)/100;
    
    request.setAttribute("avg", avg);
    request.setAttribute("name", name);
    
    if(avg>=60){
    	request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);		
    	    	
    }else{
      	request.getRequestDispatcher("score_quiz04.jsp").forward(request, response);
    }
   	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>