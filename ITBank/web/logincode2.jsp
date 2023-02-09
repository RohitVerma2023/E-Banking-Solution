<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    int acno=Integer.parseInt(request.getParameter("accountno"));
    String opr=request.getParameter("operation");
    String pswd=request.getParameter("password");
    if(opr.equals("select"))
    {
        out.print("<script>alert('Please Select an Operation');window.location.href='login.jsp';</script>");
    }
    else
    {
        String query="select password from account where accountno="+acno+"";
        DbManager db=new DbManager();
        ResultSet rs=db.select(query);
        if(rs.next())
        {
            String rspswd=rs.getString("password");
            if(rspswd.equals(pswd))
            {
                out.print("<script>alert('Valid User.');window.location.href='login.jsp;'</script>");
            }
            else
            {
                out.print("<script>alert('Invalid User.');window.location.href='login.jsp;'</script>");
            }
        }
        else
        {
            out.print("<script>alert('Account  does not exist !');window.location.href='login.jsp;'</script>");
        }
    }
%>