<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="DBPKG.DBcon" %>
<%@ page import="java.util.*, java.text.*" %>
<%@ include file="admin_header.jsp" %>
<style>
.main_help { width: 960px; margin: 25px auto; font-size: 20px; }
.main_help ol { padding-top: 5px; }
.tb { display: table; border: 1; border-color: #333; width: 960px; text-align: center;}
.tb tr { display: table-row; }
.tb td, .tb th { display: table-cell; padding: 10px; }
.tb th { width: 480px; }
button {display: block; float: left; width: 120px; line-height: 36px; text-align: center; margin-right: 25px; margin-left: 25px; border-radius: 5px ;}
button:first-child { margin-left: 350px;}
input, select { border: 1px solid #333; line-height: 24px; padding-left: 5px;}
</style>
<%@ include file="admin_nav.jsp" %>
<% 
request.setCharacterEncoding("utf-8");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs;

Date date = new Date();
SimpleDateFormat simple = new SimpleDateFormat("yyyyMMdd");
String sdate = simple.format(date);

	try {
		conn = DBcon.getConnection();
		String sql = "SELECT * FROM member_tbl_02 ORDER BY custno DESC";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		int i = 0, num = 0;
		while(rs.next()) {
			num = rs.getInt("custno");
			i++;
			num++;
			if(i > 0) break;
		}
%>
<main class="content">
	<section class="page" id="page1">
		<h2 class="page_tit">쇼핑몰 회원등록</h2>
		<div class="main_help">
			<form name="register1" id="register1" action="memberInsPro.jsp" method="get">
				<table class="tb" border="1">
					<tbody>
						<tr>
							<th><label for="custno">회원번호(자동발생)</label></th>
							<td><input type="text" name="custno" id="custno" value="<%=num%>" /></td>
						</tr>
						<tr>
							<th><label for="custname">회원성명</label></th>
							<td><input type="text" name="custname" id="custname" /></td>
						</tr>
						<tr>
							<th><label for="phone">회원전화</label></th>
							<td><input type="text" name="phone" id="phone" /></td>
						</tr>
						<tr>
							<th><label for="address">회원주소</label></th>
							<td><input type="text" name="address" id="address" /></td>
						</tr>
						<tr>
							<th><label for="joindate">가입일자</label></th>
							<td><input type="text" name="joindate" id="joindate" value="<%=sdate%>" /></td>
						</tr>
						<tr>
							<th><label for="grade">고객등급(A:VIP, B:일반, C:직원)</label></th>
							<td>
								<select name="grade" id="grade">
									<option value="">선택안함</option>
									<option value="A">A</option>
									<option value="B">B</option>
									<option value="C">C</option>
								</select>
							</td>
						</tr>
						<tr>
							<th><label for="city">도시코드</label></th>
							<td><input type="text" name="city" id="city" /></td>
						</tr>
						<td colspan="2">
							<input type="submit" id="submit_btn" value="등록" />
							<input type="button" id="search_btn" value="조회" />
						</td>
					</tbody>
				</table>
			</form>
			<script>
			var submit_btn = document.getElementById("submit_btn");
			var search_btn = document.getElementById("search_btn");
			var custname = form.custname
			var phone = form.address
			var grade = form.grade
			var city = form.city			
			
			submit_btn.addEventListener("click", function(e){
				if(custname.value == "") {
					alert("회원성명이 입력되지 않았습니다.");
					custname.focus();
					return;
				}
				if(phone.value == "") {
					alert("전화번호가 입력되지 않았습니다.");
					phone.focus();
					return;					
				}
				if(address.value == "") {
					alert("회원주소가 입력되지 않았습니다.");
					address.focus();
					return;
				}
				if(grade.value == "") {
					alert("회원등급이 선택되지 않았습니다.");
					grade.focus();
					return;
				}
				if(city.value == "") {
					alert("도시코드가 입력되지 않았습니다.");
					city.focus();
					return;
				}
				if(custname.value != "" && phone.value != "" && address.value != "" && grade.value != "" && city.value != "") {
					form.submit();
				}
			});
			
			search_btn.addEventListener("click", function(){
				location.href = memberSearch.jsp
			});
			</script>
		</div>
	</section>
</main>
<%
	} catch(Exception e) {
		System.out.println("ProductBean error : "+e);
	} finally {
		try {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e) {
			//핸들 에러 프린트
			System.out.println("DB Close error : "+e);
		}
	}
%>
<%@ include file="admin_footer.jsp" %>