<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbcon.jsp" %>
<%  request.setCharacterEncoding("UTF-8"); %>  
<body>
<%
	String custno = request.getParameter("custno");
	String custname = request.getParameter("custname");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String joindate = request.getParameter("joindate");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");

	String sql = "update member set";
    sql = sql + " custname=?, phone=?, address=?, joindate=?, grade=?, city=? " ;
    sql = sql + " where custno=? ";

    pstmt = con.prepareStatement(sql);       
	
	pstmt.setString(1, custname);
	pstmt.setString(2, phone);
	pstmt.setString(3, address);
	pstmt.setString(4, joindate);
	pstmt.setString(5, grade);
	pstmt.setString(6, city);
	pstmt.setString(7, custno);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
	
	response.sendRedirect("list.jsp");
%>

</body>
