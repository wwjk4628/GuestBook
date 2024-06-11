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

try {
    String pass = request.getParameter("password");
    GuestBookDao dao = new GuestBookDaoImple(dbuser, dbpass);
    boolean success = dao.delete(pass);

    if (success){
        response.sendRedirect(request.getContextPath() + "/list.jsp");
    } else {
        response.sendRedirect(request.getContextPath() + "/list.jsp");
%>
<%
    }
} catch (Exception e) {
    // 예외 처리
    e.printStackTrace();
%>
    <h1>Error</h1>
    <p>오류가 발생하여 데이터를 삭제할 수 없습니다.</p>
<%
}
%>
