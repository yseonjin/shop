<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbcon.jsp" %>
<%@ include file="top.jsp" %>
<body>
<%
	String sql = "select * from pool";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
	rs.next();
	
	int k = rs.getInt("k");
	int n = rs.getInt("n");
	int c = rs.getInt("c");
	int sum = k+n+c;
	
	double krate = ((double)k/sum) *100;
	double nrate = ((double)n/sum) *100;
	double crate = ((double)c/sum) *100;
%>
<section>
<div align="center">
<br><br><br>
<font size=5><b>투표결과를 공개합니다.</b></font><br><br>
<table border=1 width=400 height=200>
	<tr>
		<td>회사</td><td>득표수</td><td>득표비율</td><td>한눈에보기</td>
	</tr>
	<tr>
		<td>KAKAO</td><td><%=k%> 표</td><td><%=krate %> %</td>
		<td><hr width=<%=krate%> size=10 color="yellow" align="left"></td>
	</tr>
	<tr>
		<td>NAVER</td><td><%=n%> 표</td><td><%=nrate %> %</td>
		<td><hr width=<%=nrate%> size=10 color="green" align="left"></td>
	</tr>
	<tr>
		<td>COUPANG</td><td><%=c%> 표</td><td><%=crate %> %</td>
		<td><hr width=<%=crate%> size=10 color="red" align="left"></td>
	</tr>
	<tr>
		<td colspan=4> 총 투표횟수 : <%=sum%> 표</td>
	</tr>
</table>
<br><br>
<font size=5><b>투표에 참여해주셔서 감사합니다.</b></font>
<br><br>
<font size=4><b>투표가 완료되었습니다.</b></font>
</div>
</section>
</body>
<%@ include file="bottom.jsp" %>