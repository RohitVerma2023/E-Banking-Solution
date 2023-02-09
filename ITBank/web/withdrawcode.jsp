<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    int accountno=Integer.parseInt(session.getAttribute("accountno").toString());
    int amt=Integer.parseInt(request.getParameter("amt"));
    int balance;
    String query="select balance from account where accountno='"+accountno+"'";
    DbManager db=new DbManager();
    ResultSet rs=db.select(query);
    rs.next();
    balance=rs.getInt("balance");
    if(balance>=amt)
    {
        balance=balance-amt;
        query="update account set balance='"+balance+"' where accountno='"+accountno+"'";
        boolean res=db.insertDeleteUpdate(query);
        session.invalidate();
        if(res==true)
        {
            out.print("<script>alert('Available Amount: "+balance+" rupees.');window.location.href='index.jsp';</script>");
        }
        else
        {
            out.print("<script>alert('Can not Withdraw..');window.location.href='index.jsp';</script>"); 
        }
    }
    else
    {
        out.print("<script>alert('Insufficient Balance.');window.location.href='index.jsp';</script>"); 
    }
%>