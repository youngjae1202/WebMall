<%@ page  import="java.sql.*" contentType="text/html;" %>

<%
	String b_id = request.getParameter("b_id");
%>                                          
<HTML>
	<HEAD>
		<TITLE>컴퓨터전문쇼핑몰</TITLE>
	</HEAD>
	<link href="../common/u3.css" type=text/css rel=stylesheet>

<BODY leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
	<br>
	<table cellpadding=0 cellspacing=0 border=0 width=330>
		<tr bgcolor=#7eaee9>
			<td align=center><font color="#ffffff"><b>게시물의 비밀번호를 입력하세요.</b></font></td>
		</tr>
	</table>
	<table cellpadding=0 cellspacing=0 border=0 width=330>
	<form name="confirm_password" method="post" action="delete.jsp">
		<tr bgcolor=#948dcf>
			<td>
				<table cellpadding=4 cellspacing=1 border=0 width=330>
  					<tr bgcolor="#ffffff">
						<td align="center">
							<input type="password" name="pwd" size=20 >
							<input type="submit" value="확인">
						</td>
					</tr>
				</table>
				<input type="hidden" name="b_id" value="<%=b_id%>">  
	</form>                              
	</tr>
	</table>

	<table cellpadding=0 cellspacing=0 border=0 width=330>
		<tr bgcolor=#0000FF><td></td>
		</tr>
	</table>

</body>
</html>