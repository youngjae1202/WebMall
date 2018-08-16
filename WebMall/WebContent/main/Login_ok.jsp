<%@ page import="java.sql.*,oracle.dbpool.*" contentType="text/html;charset=utf-8" %>

<%@ page import="org.apache.log4j.*" %>

<%
	//테스트 수정
	//다시 한번 테스트 수정용
	//마지막 수정
	try{
		DBConnectionManager pool = DBConnectionManager.getInstance();
		Connection con = pool.getConnection("ora8");
		String uid="", pwd="", name="";
		String mem_uid = request.getParameter("uid"); 
		String mem_pwd = request.getParameter("pwd");
		String sql = "select m_uid, m_pwd, m_name from member where m_uid ='" + mem_uid +"'"; 
		
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);

		if(rs.next()) {
			
			uid = rs.getString(1);
			pwd = rs.getString(2);
			name = rs.getString(3);
			System.out.println("@@@@@@@@ ID 조회확인 ");
			
		} else{
			
			System.out.println("!!!!!!!!! ID 없으니 회원가입");
 %>

			<script language="JavaScript"> 
				alert("등록되어 있지 않은 아이디입니다.");
				history.go(-1); 
			</script>

 <% }
		
        if(uid.equals(mem_uid) && pwd.equals(mem_pwd)) {
			
		    session.setAttribute("pid",uid);	 //회원아이디
			session.setAttribute("pname",name);	 //회원 이름
			session.setAttribute("pmember","y"); //회원 인지 아닌지..

            // 어플리케이션 변수 설정. 현재 사용자 체크용

			if( application.getAttribute("activecount") == null){
		
				Integer r1 = new Integer("1");
				application.setAttribute("activecount",r1);

			} else { 

				Integer r2 = (Integer)application.getAttribute("activecount");
			    int s = r2.intValue(); 
				Integer r3 = new Integer(++s);
			   application.setAttribute("activecount",r3);
			}			
			
			System.out.println("########### 로그인 성공! ###########");
%>

			<script>
				alert("로그인 되었습니다.");
				location.href="../main/index.jsp";	 
			</script>
				
<%		 

		 } else if(uid.equals(mem_uid) && !pwd.equals(mem_pwd)) {

			 System.out.println("로그인 실패 - 패스워드 오류");
%>

			<script>
				alert("패스워드가 일치하지 않습니다");
				history.go(-1); 
			</script>

<%
		}
		stmt.close();
		rs.close();
		pool.freeConnection("ora8", con); 

	} catch(Exception e) {

		//out.println(e);
		e.getMessage();
	}
%>