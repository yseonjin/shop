<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbcon.jsp"%>
<%
	String pool = request.getParameter("pool");
	String sql = "update pool set "+pool+" = "+pool+" +1 ";
	pstmt = con.prepareStatement(sql);
	pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
	
	response.sendRedirect("result.jsp");
%>