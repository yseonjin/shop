<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./top.jsp" %>
<%@ include file="dbcon.jsp" %>
<script>
	function k1(){
		if(f1.custno.value.length != 6 || f1.custno.value == null){
			
			alert("회원번호는 6자리입니다!!");
			f1.custno.value = "";
			f1.custno.focus();
			return false;
		}
	}
</script>
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    function dateFormat(text){
	    text.value = text.value.replace(/(\d\d\d)(\d\d\d\d)(\d\d\d\d)/g, '$1-$2-$3');
    }
</script>
<section>
<%
	String sql = "select max(custno)+1 as m1 from member";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
	rs.next();
	
	String custno = rs.getString("m1");
%>
	<div id=title>
		<br>
		<font size=5>홈쇼핑 회원 등록</font>
		<br><br>
	</div>
	<form name=f1 onSubmit="return k1()" action=form_ok.jsp method="GET">
		<table border=1 align="center">
			<tr align="left">
				<td>회원번호(자동발생)</td>
				<td><input type="text" name="custno" size=10 value=<%=custno %> /></td>
			</tr>
			<tr align="left">
				<td>회원성명</td>
				<td><input type="text" name="custname" size=10 /></td>
			</tr>
			<tr align="left">
				<td>회원전화</td>
				<td><input type="text" name="phone" onkeyup="dateFormat(this)" /></td>
			</tr>
			<tr align="left">
				<td>회원주소</td>
				<td><input type="text" name="address" size=40/></td>
			</tr>
			<tr align="left">
				<td>가입일자</td>
				<td><input type="text" name="joindate" placeholder="yyyy-MM-dd" /></td>
			</tr>
			<tr align="left">
				<td>고객등급<br>[A:VIP, B:일반, C:직원]</td>
				<td><input type="text" name="grade" size=3 /></td>
			</tr>
			<tr align="left">
				<td>도시코드</td>
				<td><input type="text" name="city" size=3 /></td>
			</tr>
			<tr>
				<td colspan=2 align="center"><input type="submit" value="등 록" />&emsp;&emsp;
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