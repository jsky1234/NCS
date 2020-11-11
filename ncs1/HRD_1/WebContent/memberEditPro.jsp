<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="DBPKG.DBcon" %>
<%@ page import="java.util.*, java.text.*, java.lang.*, java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정처리</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs;

String str = request.getParameter("custno");
String ustr = URLDecoder.decode(str, "UTF-8");
int custno = Integer.parseInt(ustr);
System.out.println(custno);

try {
	conn = DBcon.getConnection();
	String sql = "UPDATE member_tbl_02 set custname=?, phone=?, ";
	sql += "address=?, joindate=?, grade=?, city=? WHERE custno=?";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("custname"));
	pstmt.setString(2, request.getParameter("phone"));
	pstmt.setString(3, request.getParameter("address"));
	pstmt.setString(4, request.getParameter("joindate"));
	pstmt.setString(5, request.getParameter("grade"));
	pstmt.setString(6, request.getParameter("city"));
	pstmt.setInt(7, custno);
	pstmt.executeQuery();
	
	} catch(Exception e) {
		System.out.println("DB Connection error : "+e);		
	} finally {
		try {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
%>
<script>
alert("회원정보의 수정이 정상적으로 완료되었습니다.");
location.href = "memberEdit.jsp?custno=<%=custno%>";
</script>
		<%
		} catch(Exception e) {
			//핸들에러 프린트
			System.out.println("DB close error : "+e);
		}
	}
		%>
</body>
</html>