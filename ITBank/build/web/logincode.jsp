<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    int acno=Integer.parseInt(request.getParameter("accountno"));
    String pwd=request.getParameter("password");
    String oprn=request.getParameter("operation");
    String query="select password from account where accountno='"+acno+"'";
    DbManager db=new DbManager();
    ResultSet rs=db.select(query);
    if(rs.next())
    {
        String respassword=rs.getString("password");
        if(pwd.equals(respassword))
        {
//            out.print("<h1>Valid User</h1>");
            if(oprn.equals("deposit"))
            {
                session.setAttribute("accountno", acno);
                response.sendRedirect("deposit.jsp");
            }
            else if(oprn.equals("withdraw"))
            {
                session.setAttribute("accountno", acno);
                response.sendRedirect("withdraw.jsp");
            }
            else if(oprn.equals("transfer"))
            {
                session.setAttribute("accountno", acno);
                response.sendRedirect("transfer.jsp");
            }
            else if(oprn.equals("balance"))
            {
                session.setAttribute("accountno", acno);
                response.sendRedirect("check.jsp");
            }
            else
            {
                out.print("<script>alert('Please Select an Operation');window.location.href='login.jsp';</script>");
            }
        }
        else
        {
            out.print("<script>alert('Wrong Password ! ');window.location.href='login.jsp';</script>");
        }
    }
    else
    {
        out.print("<script>alert('Account Does not Exist.');window.location.href='login.jsp';</script>");
    }
%>