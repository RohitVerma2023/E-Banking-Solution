<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="images/bank.png" type="image/x-icon">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <title> Employee Registration </title>
        <style>
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
                /*font-weight: ;*/
            }
            p{
                font-family: Clarendon BT;
                font-weight: bolder;
                font-size: 25px;
                color: green;
            }
            h4 input{
                font-family: Clarendon BT;
            }
            form{
                width: 600px;
                border: 0px solid black;
                border-radius: 10px;
                box-shadow: 3px 3px 10px black;
                text-align: center;
                padding-left: 15px;
                padding-top: 10px;
                padding-right: 15px;
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
                font-weight: bolder;
            }
            #ok:hover{
                background: green;
            }
            .btn{
                font-size: 20px;
                height: 30px;
                width: 450px;
                border-radius: 50px 50px;
                border: 1px solid black;
                font-weight: bolder;
                line-height: 10px;
                /*cursor: pointer;*/
            }
            .btn:hover{
                background: rgb(160, 158, 158);
            }
            #opt{
                min-height: 10px;
                width: 750px;
                font-family: Clarendon BT;
            }
        </style>
    </head>
    <body>
        <h1>
            &nbsp;&nbsp; e Banking Solutions
        </h1>
        <%
            if(session.getAttribute("accountnumber")!=null)
            {
        %>
        <p> Your Account Number = <%=session.getAttribute("accountnumber")%></p>
        <%
            session.invalidate();
            }
        %>
        <hr style="color: black;"><br><br>
        <center>
            <form action="regcode.jsp" method="post">
                <h1> Click Your Need:- </h1><hr style="color: black;size: 10px;">
                <h4><input type="button" onclick="window.location.href='createaccount.jsp'" value="Create New Account" class="btn"></h4>
                <!-- <h4><input type="button" onclick="window.location.href='#'" value="u;k [kkrk" class="btn"></h4> -->
                <h4><input type="button" onclick="window.location.href='login.jsp'" value="Deposit Ammount" class="btn"></h4>
                <h4><input type="button" onclick="window.location.href='login.jsp'" value="Withdraw Ammount" class="btn"></h4>
                <h4><input type="button" onclick="window.location.href='login.jsp'" value="Fund Transfer" class="btn"></h4>
                <h4><input type="button" onclick="window.location.href='login.jsp'" value="Balance Inquiry" class="btn"></h4>
                <!--<h4><input type="submit" value="Apply Now" id="ok"></h4>-->
                <br>
            </form>
        </center>
    </body>
</html>
