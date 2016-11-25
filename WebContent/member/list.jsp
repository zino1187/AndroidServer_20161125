<%@ page contentType="text/html; charset=UTF-8"%>
<%
	/* 
	클라이언트의 요청을 받자, 이때 클라이언트는 
	서버입장에서 어떤 종류인지 관심이 없음, 알필요도 없음..
	*/
	System.out.println("클라이언트 요청 감지");	

	String[] fruits={"사과","딸기","바나나","오렌지","망고","파인애플"
			,"레몬","체리","키위"};
	
	StringBuffer sb = new StringBuffer();
	sb.append("{");
	sb.append("\"fruitList\":[");
	
	for(int i=0;i<fruits.length;i++){
		sb.append("{");
		sb.append("\"name\":\""+fruits[i]+"\",");
		sb.append("\"price\":100"+i);
		if(i < fruits.length-1){
			sb.append("},");
		}else{
			sb.append("}");
		}
	}
	sb.append("]");
	sb.append("}");
	
	//클라이언트에게 응답처리..
	out.print(sb.toString());
	
%>








