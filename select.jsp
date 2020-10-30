<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
<body>
<section>
<br><br>
<div align="center">
<font size=5><b>선호하는 쇼핑몰에 투표하기</b></font>
<br><br>
<form action="select_ok.jsp" >
	<table border=1 width= 400 height=200 >
		<tr align="center">
			<td>KAKAO : 카카오톡 쇼핑</td>
			<td>
				<input type="radio" name="pool" value="k">
			</td>
		</tr>
		<tr align="center">
			<td>NAVER : 네이버쇼핑</td>
			<td><input type="radio" name="pool" value="n"></td>
		</tr>
		<tr align="center">
			<td>COUPANG : 로켓배송</td>
			<td><input type="radio" name="pool" value="c"></td>
		</tr>
		<tr>
			<td colspan=2 align="center">
				<input type="submit" value="투표하기">
				<input type="reset" value="다시선택하기">
			</td>
		</tr>
	</table>
</form>
</div>
</section>
</body>
<%@ include file="bottom.jsp"%>