<%@page import="himedia.dao.GuestBookDaoImple"%>
<%@page import="himedia.dao.GuestBookDao"%>
<%@page import="himedia.dao.GuestBookVo"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    // 데이터베이스 접속 정보 확인
    ServletContext context = getServletContext();

    String dbuser = context.getInitParameter("dbuser");
    String dbpass = context.getInitParameter("dbpass");
    String pass = request.getParameter("password");
    GuestBookDao dao = new GuestBookDaoImple(dbuser, dbpass);
    Long no = Long.parseLong(request.getParameter("no"));
	GuestBookVo vo = dao.get(no);
   	if (pass.equals(vo.getPass())){
   		dao.delete(pass, no);
   		response.sendRedirect(request.getContextPath() + "/list.jsp");
	} else {
		
		%>
		<h1>비밀번호가 일치하지 않습니다.</h1>
		<a href="<%= request.getContextPath() + "/list.jsp" %>">메인으로 돌아가기</a>
		<%
	}
%>
