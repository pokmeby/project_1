<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "net.board.db.*" %>
<%
BoardBean board = (BoardBean)request.getAttribute("boarddata");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판 수정</title>
<script type="text/javascript">
function modifyboard(){
	modifyform.submit();
}
</script>
</head>
<body>
<!--  게시판 수정 -->
<form action="BoardModifyAction.bo" method="post" enctype="multipart/fomr-data" name="modifyform">
<input type="hidden" name="BOARD_NUM" value="<%= board.getBOARD_NUM() %>"/>
<table cellpadding="0" cellspacing="0">
<tr align="center" valign="middle">
<td colspan="2">MVC 게시판</td></tr>
<tr>
<td style="font-family:돋움; font-size:12pt;" height="16">
<div align="center">글번호</div></td>
<td>
<%= board.getBOARD_NUM() %></td>
</tr>
<tr>
<td style="font-family:돋움; font-size:12pt;" height="16">
<div align="center">제  목</div></td>
<td>
<input name="BOARD_TITLE" type="text" size="50" maxlength="100" value="<%= board.getBOARD_TITLE() %>"/></td>
</tr>
<tr>
<td style="font-family:돋움; font-size:12pt;" height="16">
<div align="center">내  용</div></td>
<td>
<textarea name="BOARD_CONTENT" cols="67" rows="15"><%=board.getBOARD_CONTENT() %></textarea></td></tr>
<% if(!(board.getBOARD_IMAGE()==null)) { %>
<tr>
<td style="font-family:돋움; font-size:12pt;" height="16">
<div align="center">파일 첨부</div></td>
<td> &nbsp;&nbsp;<%=board.getBOARD_IMAGE() %></td></tr>
<% } %>
<tr bgcolor="#cccccc">
<td colspan="2" style="height:1px"></td></tr>
<tr><td colspan="2"> &nbsp;</td></tr>
<tr align="center" valign="middle">
<td colspan="2">
<a href="javascript:modifyboard()">[수정]</a>&nbsp;&nbsp;
<a href="javascript:history.go(-1)">[뒤로]</a></td></tr>
</table>
</form>
<!--  게시판 수정 -->
</body>
</html>