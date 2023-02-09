<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    int accountno=Integer.parseInt(session.getAttribute("accountno").toString());
    int racno=Integer.parseInt(request.getParameter("racno"));
    int amt=Integer.parseInt(request.getParameter("amt"));
    int balance,rbalance;
    String query="select balance from account where accountno='"+accountno+"'";
    String query1="select balance from account where accountno='"+racno+"'";
    DbManager db=new DbManager();
    ResultSet rs=db.select(query);
    ResultSet rs2=db.select(query1);
    rs.next();
    balance=rs.getInt("balance");
    rs2.next();
    rbalance=rs2.getInt("balance");
    if(balance>=amt)
    {
        balance=balance-amt;
        query="update account set balance='"+balance+"' where accountno='"+accountno+"'";
        boolean res=db.insertDeleteUpdate(query);
        if(res==true)
        {
            rbalance=rbalance+amt;
            query="update account set balance='"+rbalance+"' where accountno='"+racno+"'";
            boolean res2=db.insertDeleteUpdate(query);
            session.invalidate();
            if(res2==true)
            {
               out.print("<script>alert('Fund Transfered.');</script>"); 
            }
            out.print("<script>alert('Available Amount: "+balance+" rupees.');window.location.href='index.jsp';</script>");
        }
        else
        {
            out.print("<script>alert('Can not Transfer..');window.location.href='index.jsp';</script>"); 
        }
    }
    else
    {
        out.print("<script>alert('Insufficient Balance.');window.location.href='index.jsp';</script>"); 
    }
%>