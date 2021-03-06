<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="DBPKG.DBcon" %>
<%@ page import="java.util.*, java.text.*" %>
<%@ include file="admin_header.jsp" %>
<link rel="stylesheet" href="./css/table.css" />
<%@ include file="admin_nav.jsp" %>
<main class="content">
	<section class="page" id="page1">
		<h2 class="page_tit">회원매출조회</h2>
		<div class="main_help">
			<table class="tb" border="1">
				<thead>
					<tr>
						<th class="custno">회원번호</th>
						<th class="custname">회원성명</th>
						<th class="grade">고객등급</th>
						<th class="total">매출</th>
					</tr>
				</thead>
				<tbody>
				<%
				request.setCharacterEncoding("utf-8");
				
				DBcon db;
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs;
				String custno, custname, grade, total;
				
				try {
					conn = DBcon.getConnection();
					String sql = "SELECt a.custno, a.custname, a.grade, sum(b.price) AS total ";
					sql += "FROM member_tbl_02 a ";
					sql += "JOIN money_tbl_02 b ON a.custno = b.custno ";
					sql += "GROUP BY (a.custno, a.custname, a.grade) ";
					sql += "ORDER BY total DESC";
					
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					while(rs.next()) {
						custno = rs.getString("custno");
						custname = rs.getString("custname");
						grade = rs.getString("grade");
						total = rs.getString("total");
						
						switch(grade) {
							case "A" : grade = "VIP"; break;
							case "B" : grade = "일반"; break;
							case "C" : grade = "직원"; break;
						}
				%>
					<tr>
						<td class="custno"><%=custno %></td>
						<td class="custname"><%=custname %></td>
						<td class="grade"><%=grade %></td>
						<td class="total"><%=total %></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
				<%
				} catch(Exception e) {
					System.out.println("DB Connection error : "+e);
				%>
				<script>
				alert("데이트베이스 연결에 실패하여 작업을 완료하지 못했습니다.");
				location.href = "memberIns.jsp";
				</script>
				<%
				} finally {
					try {
						if(pstmt != null) pstmt.close();
						if(conn != null) conn.close();
				%>
				<script>
				alert("회원매출정보가 정상적으로 조회되었습니다.;")
				</script>
				<%
					} catch(Exception e) {
						//핸들에러 프린트
						System.out.println("DB Close error : "+e);
					}
				}
				%>
		</div>		
	</section>
</main>
<%@ include file="admin_footer.jsp" %>