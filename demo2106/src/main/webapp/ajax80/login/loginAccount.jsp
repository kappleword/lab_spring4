<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <form class="navbar-form navbar-right" action="/logout.jsp">
<%
	String s_name = null;
	s_name = (String)session.getAttribute("s_name");
%>
        <label for="msg">
          	<font color="white"><%=s_name %>님 환영합니다.</font>
        </label>
        <button type="button" class="btn btn-dark" onclick="logoutAction()">LogOut</button>
      </form>