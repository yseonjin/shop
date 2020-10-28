<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./top.jsp" %>
<%@ include file="dbcon.jsp" %>
<section>
<%
	String sql = "select * from member where custno=?";
	pstmt = con.prepareStatement(sql);
	String custno = request.getParameter("custno");
	pstmt.setString(1, custno);
	rs = pstmt.executeQuery();
	rs.next();

	String custname = rs.getString("custname");
	String phone = rs.getString("phone");
	String address = rs.getString("address");
	String joindate = rs.getString("joindate");
	String grade = rs.getString("grade");
	String city = rs.getString("city");
%>
	<div id=title>
		<br>
		<font size=5>홈쇼핑 회원 등록</font>
		<br><br>
	</div>
	<form action=edit_ok.jsp method="GET">
		<table border=1 align="center">
			<tr align="left">
				<td>회원번호(수정불가)</td>
				<td><input type="text" name="custno" size=10 value=<%=custno%> /></td>
			</tr>
			<tr align="left">
				<td>회원성명</td>
				<td><input type="text" name="custname" size=10 value=<%=custname%> /></td>
			</tr>
			<tr align="left">
				<td>회원전화</td>
				<td><input type="text" name="phone" value="<%=phone%>" /></td>
			</tr>
			<tr align="left">
				<td>회원주소</td>
				<td><input type="text" name="address" size=40 value="<%=address%>" /></td>
			</tr>
			<tr align="left">
				<td>가입일자</td>
				<td><input type="text" name="joindate" value=<%=joindate%> /></td>
			</tr>
			<tr align="left">
				<td>고객등급<br>[A:VIP, B:일반, C:직원]</td>
				<td><input type="text" name="grade" size=3 value=<%=grade%> /></td>
			</tr>
			<tr align="left">
				<td>도시코드</td>
				<td><input type="text" name="city" size=3 value=<%=city%> /></td>
			</tr>
			<tr>
				<td colspan=2 align="center"><input type="submit" value="수 정" />&emsp;&emsp;
				              <input type="reset" value="다시 입력하기" /></td>
			</tr>
		</table >
	</form>
	
<%
	rs.close();
	pstmt.close();
	con.close();

%>

</section>
<%@ include file="./bottom.jsp"%>