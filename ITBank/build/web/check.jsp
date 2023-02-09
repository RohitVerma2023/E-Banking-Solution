<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if(session.getAttribute("accountno")==null)
    {
        response.sendRedirect("index.jsp");
    }
    else
    {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="images/bank.png" type="image/x-icon">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <title> Amount | Fund Transfer </title>
        <style>
            body{
                background: rgb(237, 237, 247);
            }
            ::-webkit-scrollbar{
                width: 7px;
            }
            ::-webkit-scrollbar-thumb{
                background-color: gray;
                border-radius: 50px 50px;
            }
            ::-webkit-scrollbar-track{
                background: transparent;
            }
            h1{
                font-family: Magneto;
                text-align: justify;
                /*font-weight: ;*/
            }
            form h1{
                font-family: Magneto;
                text-align: center;
                /*font-weight: ;*/
            }
            p{
                font-family: Clarendon BT;
                font-weight: bolder;
                font-size: 25px;
                color: green;
            }
            input{
                font-family: Clarendon BT;
            }
/*            form{
                width: 600px;
                background: white;
                border: 0px solid black;
                border-radius: 10px;
                box-shadow: 3px 3px 10px black;
                text-align: left;
                font-family: Clarendon BT;
                padding-left: 15px;
                padding-top: 10px;
                padding-right: 15px;
            }*/
            select{
                cursor: pointer;
            }
            input{
                height: 25px;
                width: 450px;
                border-radius: 50px 50px;
                padding-left: 10px;
                border: 1px solid black;
                /* font-family: Clarendon BT; */
            }
            #ok{
                height: 30px;
                width: 450px;
                background-color: rgb(5, 170, 5);
                color: white;
                /*font-weight: bolder;*/
            }
            #ok:hover{
                background: green;
            }
            .btn{
                font-size: 20px;
                height: 30px;
                color: white;
                background: green;
                width: 450px;
                border-radius: 50px 50px;
                border: 1px solid black;
                /*font-weight: bold;*/
                line-height: 15px;
                /*cursor: pointer;*/
            }
            .btn:hover{
                background: rgba(0,0,0,.2);
                text-decoration: none;
                line-height: 15px;
            }
            #opt{
                min-height: 10px;
                width: 750px;
                font-family: Clarendon BT;
            }
        </style>
    </head>
    <body>
<%
        int accountno=Integer.parseInt(session.getAttribute("accountno").toString());
//        int bal;
        String query="select * from account where accountno='"+accountno+"'";
        DbManager db=new DbManager();
        ResultSet rs=db.select(query);
        while(rs.next())
        {
        %>
        <h1>Account Holder is: Mr. <%=rs.getString("name")%></h1>
        <h1>Account Holder Adhar: <%=rs.getString("adharno")%></h1>
        <h1>Available Balance is: &#x20B9; <%=rs.getInt("balance")%> /-</h1>
        <form>
            <h1><a href="index.jsp" class='btn'>Go Back</a></h1>
        </form>
        <%
        }
//        bal=rs.getInt("balance");
//        out.print("<h1>Available Balance is: "+rs+" rupees only.</h1>");
//        out.print("<h1><a href='index.jsp'>Go Back</a></h1>");
    }
%>
    </body>
</html>