/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.37
 * Generated at: 2020-11-11 11:32:57 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import DBPKG.DBcon;
import java.util.*;
import java.text.*;

public final class memberIns_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/admin_header.jsp", Long.valueOf(1605075033047L));
    _jspx_dependants.put("/admin_footer.jsp", Long.valueOf(1604972310344L));
    _jspx_dependants.put("/admin_nav.jsp", Long.valueOf(1605075033047L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("java.text");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("DBPKG.DBcon");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("java.sql.PreparedStatement");
    _jspx_imports_classes.add("java.sql.DriverManager");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"./css/main.css\" />\r\n");
      out.write("<title>관리자 모드</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<header class=\"hd\">\r\n");
      out.write("\t<h2 class=\"tit\">관리자용 회원관리 프로그램</h2>\r\n");
      out.write("</header>");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"./css/table.css\" />\r\n");
      out.write("<style>\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<nav class=\"gnb\">\r\n");
      out.write("\t<ul>\r\n");
      out.write("\t\t<li><a href=\"memberIns.jsp\">회원등록</a></li>\r\n");
      out.write("\t\t<li><a href=\"memberList.jsp\">회원목록조회/수정</a></li>\r\n");
      out.write("\t\t<li><a href=\"memberSearch.jsp\">회원매출조회</a></li>\r\n");
      out.write("\t\t<li><a href=\"admin.jsp\">홈으로</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("</nav>");
      out.write('\r');
      out.write('\n');
 
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

      out.write("\r\n");
      out.write("<main class=\"content\">\r\n");
      out.write("\t<section class=\"page\" id=\"page1\">\r\n");
      out.write("\t\t<h2 class=\"page_tit\">쇼핑몰 회원등록</h2>\r\n");
      out.write("\t\t<div class=\"main_help\">\r\n");
      out.write("\t\t\t<form name=\"register1\" id=\"register1\" action=\"memberInsPro.jsp\" method=\"get\">\r\n");
      out.write("\t\t\t\t<table class=\"tb\" border=\"1\">\r\n");
      out.write("\t\t\t\t\t<tbody>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<th><label for=\"custno\">회원번호(자동발생)</label></th>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"custno\" id=\"custno\" value=\"");
      out.print(num);
      out.write("\" /></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<th><label for=\"custname\">회원성명</label></th>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"custname\" id=\"custname\" /></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<th><label for=\"phone\">회원전화</label></th>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"phone\" id=\"phone\" /></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<th><label for=\"address\">회원주소</label></th>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"address\" id=\"address\" /></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<th><label for=\"joindate\">가입일자</label></th>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"joindate\" id=\"joindate\" value=\"");
      out.print(sdate);
      out.write("\" /></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<th><label for=\"grade\">고객등급(A:VIP, B:일반, C:직원)</label></th>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<select name=\"grade\" id=\"grade\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"\">선택안함</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"A\">A</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"B\">B</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"C\">C</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<th><label for=\"city\">도시코드</label></th>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"city\" id=\"city\" /></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t\t<input class=\"btn\" type=\"button\" id=\"submit_btn\" value=\"등록\" />\r\n");
      out.write("\t\t\t\t\t\t\t<input class=\"btn\" type=\"button\" id=\"search_btn\" value=\"조회\" />\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t\t<script>\r\n");
      out.write("\t\t\tvar form = document.register1\r\n");
      out.write("\t\t\tvar submit_btn = document.getElementById(\"submit_btn\");\r\n");
      out.write("\t\t\tvar search_btn = document.getElementById(\"search_btn\");\r\n");
      out.write("\t\t\tvar custname = form.custname\r\n");
      out.write("\t\t\tvar phone = form.phone\r\n");
      out.write("\t\t\tvar address = form.address\r\n");
      out.write("\t\t\tvar grade = form.grade\r\n");
      out.write("\t\t\tvar city = form.city\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tsubmit_btn.addEventListener(\"click\", function(e){\r\n");
      out.write("\t\t\t\tif(custname.value == \"\") {\r\n");
      out.write("\t\t\t\t\talert(\"회원성명이 입력되지 않았습니다.\");\r\n");
      out.write("\t\t\t\t\tcustname.focus();\r\n");
      out.write("\t\t\t\t\treturn false;\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\tif(phone.value == \"\") {\r\n");
      out.write("\t\t\t\t\talert(\"전화번호가 입력되지 않았습니다.\");\r\n");
      out.write("\t\t\t\t\tphone.focus();\r\n");
      out.write("\t\t\t\t\treturn;\t\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\tif(address.value == \"\") {\r\n");
      out.write("\t\t\t\t\talert(\"회원주소가 입력되지 않았습니다.\");\r\n");
      out.write("\t\t\t\t\taddress.focus();\r\n");
      out.write("\t\t\t\t\treturn;\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\tif(grade.value == \"\") {\r\n");
      out.write("\t\t\t\t\talert(\"회원등급이 선택되지 않았습니다.\");\r\n");
      out.write("\t\t\t\t\tgrade.focus();\r\n");
      out.write("\t\t\t\t\treturn;\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\tif(city.value == \"\") {\r\n");
      out.write("\t\t\t\t\talert(\"도시코드가 입력되지 않았습니다.\");\r\n");
      out.write("\t\t\t\t\tcity.focus();\r\n");
      out.write("\t\t\t\t\treturn;\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\tif(custname.value != \"\" && phone.value != \"\" && address.value != \"\" && grade.value != \"\" && city.value != \"\") {\r\n");
      out.write("\t\t\t\t\tform.submit();\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tsearch_btn.addEventListener(\"click\", function(){\r\n");
      out.write("\t\t\t\tlocation.href = \"memberList.jsp\"\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t</script>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</section>\r\n");
      out.write("</main>\r\n");

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

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<footer class=\"ft\">\r\n");
      out.write("\t<div class=\"ft_wrap\">\r\n");
      out.write("\t\t<div class=\"admin_copy\">\r\n");
      out.write("\t\t\t<p class=\"copyright\">HRDKOREA Copyright@2016 All rights reserved Human Resource Development Service of Korea</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
