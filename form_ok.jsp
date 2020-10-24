<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbcon.jsp" %>

<body>
<%

	String sql = "insert into member (custno, custname, phone, address, joindate, grade, city) ";
	       sql = sql + " values (?, ?, ?, ?, ?, ?, ?)";
	       
	pstmt = con.prepareStatement(sql);       
	
	String custno = request.getParameter("custno");
	String custname = request.getParameter("custname");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String joindate = request.getParameter("joindate");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
	
	
	pstmt.setString(1, custno);
	pstmt.setString(2, custname);
	pstmt.setString(3, phone);
	pstmt.setString(4, address);
	pstmt.setString(5, joindate);
	pstmt.setString(6, grade);
	pstmt.setString(7, city);
	
	pstmt.executeUpdate();

	pstmt.close();
	con.close();



%>

</body>
