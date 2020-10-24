<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "top.jsp" %>
<%@ include file = "dbcon.jsp" %>
<body>
<section>
<% 
	String sql = "select * from member";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
%>
<br>
<font size = 4 ><b>회원 목록 조회</b></font></font>
<br><br>
회원번호를 클릭하면 수정페이지로 넘어갑니다.<br>
도시코드를 클릭하면 회원정보를 삭제합니다.
<br><br>
<table border=1 align="center">
	<tr>
		<td>회원번호</td><td>회원성명</td><td>회원전화</td><td>회원주소</td><td>가입일자</td><td>고객등급</td><td>도시코드</td>
	</tr>
<%	
	while(rs.next()){	
		String grade = rs.getString("grade");
		String level ="";
		if (grade.equals("A")){
			level = "VIP";
		}else if(grade.equals("B")){
			level = "일반";
		}else if(grade.equals("C")){
			level = "직원";
		}else{
			level = "비회원";
		}
%>

	<tr>
		<td><a href="edit.jsp?custno=<%=rs.getString("custno")%>"><%=rs.getString("custno") %></a></td>
		<td><%=rs.getString("custname") %></td>
		<td><%=rs.getString("phone") %></td>
		<td><%=rs.getString("address") %></td>
		<td><%=rs.getString("joindate").substring(0,10) %></td>
		<td><%=level%></td>
		<td><%=rs.getString("city") %></td>
	</tr>

<%
	}
%>
</table>
</section>
<%
	rs.close();
	pstmt.close();
	con.close();

%>

</body>
<%@ include file ="bottom.jsp" %>