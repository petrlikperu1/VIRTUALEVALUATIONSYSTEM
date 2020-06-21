<%-- 
    Document   : newjsp
    Created on : 9/10/2015, 01:35:59 PM
    Author     : Ivancito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Frameset//EN" "http://www.w3.org/TR/REC-html40/frameset.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            
            function  listar()
            {
                var  longitud=document.form.rdop.value;
                alert(longitud);
            }
            
        </script>
    </head>
    <body>
        <form  name="form">
            <%  for(int  i=1;i<10;i++){ %>
        
        <input type="radio" name="rdop" id="rdop" value="<%=i*90%>">
        <%  } %> 
           <input  type="button"  value="presionar"  onclick="listar()">  
        </form>
       
        
       
    </body>
</html>
