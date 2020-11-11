<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="DBPKG.DBcon" %>
<%@ page import="java.util.*, java.text.*, java.lang.*, java.net.*" %>
<%@ include file="admin_header.jsp" %>
<link rel="stylesheet" href="./css/table.css" />
<%@ include file="admin_nav.jsp" %>
<main class="content">
	<section class="page" id="page1">
		<h2 class="page_tit">회원목록조회/수정</h2>
		<div class="main_help">
			<table class="tb" border="1">
				<thead>
					<tr>
						<th class="custno">회원번호</th>
						<th class="custname">회원성명</th>
						<th class="phone">전화번호</th>
						<th class="address">주소</th>
						<th class="joindae">가입일</th>
						<th class="grade">고객등급</th>
						<th class="city">거주지역</th>
					</tr>
				</thead>
				<tbody>
				<%
				DBcon db;
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs;
				int custno;
				String custname, phone, address, joindate, grade, city;
				
				try {
					conn = DBcon.getConnection();
					String sql = "SELECT * FROM member_tbl_02";
					
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					while(rs.next()) {
						custno = rs.getInt("custno");
						custname = rs.getString("custname");
						phone = rs.getString("phone");
						address = rs.getString("address");
						joindate = rs.getString("joindate");
						grade = rs.getString("grade");
						city = rs.getString("city");
						
						switch(grade) {
							case "A" : grade = "VIP"; break;
							case "B" : grade = "일반"; break;
							case "C" : grade = "직원"; break;							
						}
						String sdate = joindate.substring(0,10);
					%>
					<tr>
						<td class="custno">
							<a href="memberEdit.jsp?custno=<%=custno%>"><%=custno %></a>
						</td>
						<td class="custname"><%=custname %></td>
						<td class="phone"><%=phone %></td>
						<td class="address"><%=address %></td>
						<td class="joindate"><%=sdate %></td>
						<td class="grade"><%=grade %></td>
						<td class="city"><%=city %></td>
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
				alert("데이터베이스 연결에 실패하여 작업이 완료되지 않았습니다.");
				location.href = memberIns.jsp
				</script>
				<%
				} finally {
					try {
						if(pstmt != null) pstmt.close();
						if(conn != null) conn.close();
				%>
					<script>
					alert("회원정보 조회에 성공하였습니다.");
					</script>
					<%
					} catch(Exception e) {
						//핸들에러 프린트
						System.out.println("DB Close error :"+e);
					}
				}
					%>
		</div>
	</section>
</main>
<%@ include file="admin_footer.jsp" %>