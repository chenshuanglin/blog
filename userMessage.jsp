<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="s" uri="/struts-tags"%>
  <%! int i = 0; %>
  <a class="reply" onclick="getuserName('comment<%=i++ %>','target')">回应</a>
	<img src='<s:property value='user.photo'/>' class="smallimage"/><a  id="comment<%=i-1 %>"><s:property value="user.username"/></a>