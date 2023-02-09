<%@page import="connect.DbManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Random"%>
<%
    String acno="";
    Random r=new Random();
    for(int i=1;i<=6;i++)
    {
        acno=acno+(r.nextInt(9)+1);
    }
//    r.nextInt(9); will generate a random number in 0 to 8, but we don't need 0 so we add +1(r.nextInt(9)+1;) it will add +1 in every random digit.
    int accountno=Integer.parseInt(acno);
//    out.print("your account no is: "+acno);
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String number=request.getParameter("number");
    String email=request.getParameter("email");
    String adhar=request.getParameter("adhar");
    String pan=request.getParameter("pan");
    int balance=0;
    String pwd=request.getParameter("password");
//    String date="now()";
    Date dt=new Date();
    SimpleDateFormat df=new SimpleDateFormat();
//    SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy"); will set formate only date/month/year.
    String openingdate=df.format(dt);
    DbManager db=new DbManager();
    String query="insert into account values("+acno+",'"+name+"','"+gender+"','"+address+"','"+number+"','"+email+"','"+adhar+"','"+pan+"',"+balance+",'"+pwd+"','"+openingdate+"')";
    boolean res=db.insertDeleteUpdate(query);
    if(res==true)
    {
        session.setAttribute("accountnumber", acno+"");
        response.sendRedirect("index.jsp");
    }
    else
    {
        out.print("<script>alert('Account is not created. ');window.location.href='index.jsp';</script>");
    }
//    out.print("<script>alert('Registration is Done. ');window.location.href='index.jsp';</script>");
%>