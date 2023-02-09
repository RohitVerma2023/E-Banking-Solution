<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="images/bank.png" type="image/x-icon">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <title> Employee | Login </title>
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
            form{
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
            }
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
                line-height: 10px;
                /*cursor: pointer;*/
            }
            .btn:hover{
                background: rgba(0,0,0,.2);
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
            &nbsp;&nbsp; Login Your Account
        </h1>
        <br>
        <center>
            <form action="logincode.jsp" method="post">
                <h1> Account Login:- </h1><hr style="color: black;size: 10px;">
                    <div class="form-group">
                      <label for="acno">Account Number:- </label>
                      <input type="number" class="form-control" id="acno" placeholder="Enter Your Account Number..." name="accountno" required>
                    </div>
                    <div class="form-group">
                      <label for="opr">Select Operation:- </label>
                      <select id="opr" class="form-control" name="operation">
                          <option value="select"> --Select-- </option>
                          <option value="deposit"> Deposit Amount </option>
                          <option value="withdraw"> Withdraw Amount </option>
                          <option value="transfer"> Fund Transfer </option>
                          <option value="balance"> Balance Enquiry </option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="Password"> Enter Password</label>
                      <input type="password" class="form-control" id="Password" placeholder="Enter Correct Password..." name="password" required>
                    </div>
                    <br>
                    <center><button id="ok" type="submit" class="btn btn-default" onclick="check()">Log in</button></center>
                    <br>
            </form>
        </center>
<!--    <script>
            function check(){
                var a=document.getElementById("opr").value;
                var b=document.getElementsByTagName("form");
                if(a=="select")
                {
                    alert("Please Select an Operater.");
                   
                }
            }
    </script>-->
    </body>
</html>
