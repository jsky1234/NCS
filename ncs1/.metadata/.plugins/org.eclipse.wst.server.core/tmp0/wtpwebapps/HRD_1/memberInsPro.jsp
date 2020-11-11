<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="DBPKG.DBcon" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 회원등록 처리</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs;

try {
	conn = DBcon.getConnection();
	String sql = "INSERT INTO member_tbl_02 values(m_seq.NEXTVAL, ?, ?, ?, ?, ?, ?)";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("custname"));
	pstmt.setString(2, request.getParameter("phone"));
	pstmt.setString(3, request.getParameter("address"));
	pstmt.setString(4, request.getParameter("joindate"));
	pstmt.setString(5, request.getParameter("grade"));
	pstmt.setString(6, request.getParameter("city"));
	pstmt.executeQuery();
	
} catch(Exception e) {
	System.out.println("DB Connection error : "+e);
%>
<script>
alert("데이터베이스 연결에 실패하여 회원등록이 완료되지 않았습니다.");
location.href = "memberIns.jsp"
</script>
<%
} finally {
	try {
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
%>
<script>
alert("회원등록이 정상적으로 완료되었습니다.");
location.href = "memberIns.jsp"
</script>
<%
	} catch(Exception e) {
		//핸들 에러 프린트
		System.out.println("DB Close error : "+e);
	}
}
%>
</body>
</html>