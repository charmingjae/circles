/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.36
 * Generated at: 2020-07-13 13:41:51 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.root;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;

public final class wrInfo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/root/../navbar/navbar.jsp", Long.valueOf(1594647709000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.io.PrintWriter");
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<title>MOJUK</title>\n");
      out.write("\n");
      out.write("\t<!-- Link wrInfo.css -->\n");
      out.write("\t<link href=\"../css/wrInfo.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("\t<script>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t/*\n");
      out.write("\t\tinputPhoneNumber() : 연락처 폼 하이픈 입력 func\n");
      out.write("\t*/\n");
      out.write("\tfunction inputPhoneNumber(obj) {\n");
      out.write("\t    var number = obj.value.replace(/[^0-9]/g, \"\");\n");
      out.write("\t    var phone = \"\";\n");
      out.write("\t    if(number.length < 4) {\n");
      out.write("\t        return number;\n");
      out.write("\t    } else if(number.length < 7) {\n");
      out.write("\t        phone += number.substr(0, 3);\n");
      out.write("\t        phone += \"-\";\n");
      out.write("\t        phone += number.substr(3);\n");
      out.write("\t    } else if(number.length < 11) {\n");
      out.write("\t        phone += number.substr(0, 3);\n");
      out.write("\t        phone += \"-\";\n");
      out.write("\t        phone += number.substr(3, 3);\n");
      out.write("\t        phone += \"-\";\n");
      out.write("\t        phone += number.substr(6);\n");
      out.write("\t    } else {\n");
      out.write("\t        phone += number.substr(0, 3);\n");
      out.write("\t        phone += \"-\";\n");
      out.write("\t        phone += number.substr(3, 4);\n");
      out.write("\t        phone += \"-\";\n");
      out.write("\t        phone += number.substr(7);\n");
      out.write("\t    }\n");
      out.write("\t    obj.value = phone;\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\t/*\n");
      out.write("\t\tvalidForm() : 항목 입력 검증 func\n");
      out.write("\t*/\n");
      out.write("\tfunction validForm(){\n");
      out.write("\t\tvar frmInfo = document.frmInfo;\n");
      out.write("\t\tvar stuName = frmInfo.stuName.value;\n");
      out.write("\t\tvar stuPhone = frmInfo.stuPhone.value;\n");
      out.write("\t\tvar stuGrade = frmInfo.grade.value;\n");
      out.write("\t\tvar stuClass = frmInfo.stuClass.value;\n");
      out.write("\t\t\n");
      out.write("\t\tif(!stuName||!stuPhone||!stuGrade||!stuClass){\n");
      out.write("\t\t\talert('모든 항목을 입력해주세요.');\n");
      out.write("\t\t\treturn;\n");
      out.write("\t\t}\n");
      out.write("\t\telse{\n");
      out.write("\t\t\tfrmInfo.submit();\n");
      out.write("\t\t}\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\t/*\n");
      out.write("\t\tentValidForm() : 엔터키 입력 처리 func\n");
      out.write("\t*/\n");
      out.write("\tfunction entValidForm(e){\n");
      out.write("\t\tif(event.keyCode == 13){\n");
      out.write("\t\t\tvalidForm();\n");
      out.write("\t\t}\n");
      out.write("\t}\n");
      out.write("\t</script>\n");
      out.write("\t\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t");

		request.setCharacterEncoding("UTF-8");
	
		/* 
			getStuNo : index에서 입력한 학번
		*/
		String getStuNo = (String)request.getAttribute("inputStuNo");

		if(getStuNo == null){
			PrintWriter outs = response.getWriter();
			outs.println("<script>alert('정상적으로 학번을 입력하세요.'); location.href='index.jsp';</script>");
			outs.flush();
		}
	
      out.write("\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t<!-- include header -->\n");
      out.write("\t");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title></title>\n");
      out.write("\n");
      out.write("\t<!-- Link navbar.css -->\n");
      out.write("\t<link href=\"../css/navbar.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("</head>\n");
      out.write("\t");

		String getSession = (String)session.getAttribute("userID");
	
      out.write("\n");
      out.write("<body>\n");
      out.write("\t<ul id=\"main-menu\">\n");
      out.write("\t\t<li class=\"headName\" id=\"main-menu1\"><a href=\"../root/index.jsp\" class=\"headName\">CIRCLES</a></li>\n");
      out.write("\t\t");

			if((getSession != null) && (getSession.isEmpty() == false)){
				
      out.write("\n");
      out.write("\t\t\t\t<li style=\"float:right\" id=\"main-menu2\"><a class=\"active\" href=\"../root/admPg.jsp\">");
      out.print(getSession );
      out.write("님 환영합니다.</a>\n");
      out.write("\t\t\t\t\t<ul id=\"sub-menu\">\n");
      out.write("\t\t\t\t\t\t<li><a class=\"subAct\" href=\"../proc/logout.jsp\">로그아웃</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t");

			}
			else{
				
				
      out.write("\n");
      out.write("\t\t\t\t<li style=\"float:right\"><a class=\"active\" href=\"../root/login.jsp\">롸긴</a></li>\n");
      out.write("\t\t\t\t");

			}
		
      out.write("\n");
      out.write("\t\t<li style=\"float:right\"><a class=\"active\" href=\"../root/contact.jsp\">Contact</a></li>\n");
      out.write("\t</ul>\n");
      out.write("</body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<form onsubmit=\"return false;\" action=\"../root/chkInterest.jsp\" class=\"container\" method=\"post\" name=\"frmInfo\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<span id=\"showWelcome\">🍀");
      out.print(getStuNo );
      out.write(" 님 환영합니다🍀</span>\n");
      out.write("\t\t\t<span id=\"showRetIndex\" onClick=\"javascript:location.href='index.jsp'\" style=\"cursor:hand\" onfocus=\"blur();\"> >학번 다시 입력하기< </span>\n");
      out.write("\t\t\t<span id=\"showEtc\"> 당신에 대해 알고싶어요!</span>\n");
      out.write("\t\t\t<div class=\"main\">\n");
      out.write("\t\t\t\t<input type=\"text\" onkeydown=\"entValidForm()\" name=\"stuName\" placeholder=\"이름\">\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"main\">\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"stuPhone\" onkeyup=\"inputPhoneNumber(this)\" onkeydown=\"entValidForm()\" class=\"phoneNum\" maxlength=\"13\" placeholder=\"📞\">\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"main\">\n");
      out.write("\t\t\t\t<select name=\"grade\">\n");
      out.write("\t\t\t\t\t<option value=\"\" disabled selected>학년을 선택하세요</option>\n");
      out.write("\t\t\t\t\t<option value=1>1\n");
      out.write("\t\t\t\t\t<option value=2>2\n");
      out.write("\t\t\t\t\t<option value=3>3\n");
      out.write("\t\t\t\t</select>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"main\">\n");
      out.write("\t\t\t\t<select name=\"stuClass\">\n");
      out.write("\t\t\t\t\t<option value=\"\" disabled selected>반을 선택하세요</option>\n");
      out.write("\t\t\t\t\t<option value=\"A\">A\n");
      out.write("\t\t\t\t\t<option value=\"B\">B\n");
      out.write("\t\t\t\t\t<option value=\"C\">C\n");
      out.write("\t\t\t\t</select>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"subBtn\">\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"stuNo\" value=\"");
      out.print(getStuNo );
      out.write("\" />\n");
      out.write("\t\t\t\t<button type=\"button\" onclick=\"validForm()\">다 작성했어요!</button>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</form>\n");
      out.write("\t\n");
      out.write("</body>\n");
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
