<%@ page  contentType="text/html;charset=utf-8" %>
<%
	String b_id = request.getParameter("b_id");
%>

<HTML>
	<HEAD><TITLE>비밀번호입력화면</TITLE>
		<link href="../ch10/m3.css" type=text/css rel=stylesheet>
</HEAD>

<BODY topmargin=0 leftmargin=0 bgcolor=white>
	<center><br>
	<table cellpadding=0 cellspacing=0 border=1 width=250>
		<tr bgcolor=#7eaee9>
			<td align=center><b>게시물의 비밀번호를 입력하세요.</b></td>
		</tr>
		<form name="frm" method="post" action="delete.jsp">
  		<tr>
			<td align="center">
				<input type="password" name="pwd" size=20 >
				<input type="submit" value="확인">
			</td>
		</tr>
		<input type="hidden" name="b_id" value="<%=b_id%>">  
	</form>
	</table></center>
</BODY>
</HTML>