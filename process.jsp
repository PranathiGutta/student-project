<%@page import="jspdemo.User,java.io.InputStream"  %>
<jsp:useBean id="obj" class="jspdemo.Structure" scope="application"> </jsp:useBean>
<jsp:setProperty property="*" name="obj"/> 
<br>

<%	

int i=User.insert(obj);
 if(i>0){
	response.sendRedirect("success.jsp");
}
 else{
	 response.sendRedirect("error.jsp");
 } 
	%>


