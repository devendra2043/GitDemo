<%-- 
    Document   : Welcome
    Created on : 19 Nov, 2018, 12:03:26 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome, <%=session.getAttribute("username") %></h1>
        
        <%
        String un = (String)session.getAttribute("username");
        
        String sessionID = null;
       Cookie[] cookies = request.getCookies();
      if(cookies !=null){
      for(Cookie cookie : cookies){
	if(cookie.getName().equals("username")){ un = cookie.getValue();}
        
        out.println(cookie.getName()+" : "+cookie.getValue()+"<br/>");
        Cookie cks = new Cookie(cookie.getName(), cookie.getValue());
        cks.setMaxAge(30000000);
        response.addCookie(cks);
}
}
%>
<h3>Hi <%=un %>, do the checkout.</h3>
        
<br>
<form action="<%=response.encodeURL("Logout") %>" method="post">
     <input type="submit" value="Logout" >
</form>   

    </body>
</html>
