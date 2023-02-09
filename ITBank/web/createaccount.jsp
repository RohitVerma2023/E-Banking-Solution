<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/bank.png" type="image/x-icon">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.css">
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
        div h1{
            font-family: Magneto;
            text-align: center;
            /*position: fixed;*/
            /*font-weight: ;*/
        }
        body{
            padding-top: 30px;
            padding-bottom: 30px;
        }
        h4 input{
            font-family: Clarendon BT;
        }
        .side{
            float: left;
            height: 530px;
            /*background: red;*/
        }
        .form{
            float: left;
            max-height:500px; 
            border: 2px solid black;
            background: rgb(237, 237, 247);
            margin: 0 auto;
            overflow-y: auto;
        }
        form div label{
            font-size: 20px;
            font-family: Clarendon BT;
        }
        input{
            font-family: Clarendon BT;
        }
        .btn{
            width: 200px;
            background: rgb(7, 180, 7);
            color: white;
        }
    </style>
    <title> Create New Account </title>
</head>
<body style="padding-bottom: 30px;">
    <div class="col-sm-2 side"></div>
    <div class="col-sm-8 form">
        <div class="row">
            <div class="col-sm-12 hd">
                <h1> Create New Account </h1>
            </div>
        </div>
        <hr style="color:black;">
        <div class="row">
            <div class="col-sm-12">
                <form action="createaccountcode.jsp" method="post">
                    <div class="form-group">
                      <label for="InputName">Customer Name:- </label>
                      <input type="text" class="form-control" id="InputName" placeholder="Enter Your Name..." name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="Gender">Select Gender:- </label>
                        <div class="radio">
                            <label>
                              <input type="radio" name="gender" value="Male" checked>Male
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                              <input type="radio" name="gender" value="Female">Female
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                      <label for="Address">Customer Address:- </label>
                      <input type="text" class="form-control" id="Address" placeholder="Enter Your Address..." name="address" required>
                    </div>
                    <div class="form-group">
                      <label for="Contact">Customer Contact Number:- </label>
                      <input type="number" class="form-control" id="Contact" placeholder="Enter Your Number..." name="number" required>
                    </div>
                    <div class="form-group">
                      <label for="Email">Customer Email:- </label>
                      <input type="email" class="form-control" id="Email" placeholder="Enter Your Email..." name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="Adhar">Customer Adhar Number:- </label>
                        <input type="number" class="form-control" id="Adhar" placeholder="Enter Adhar Number..." name="adhar" required>
                    </div>
                    <div class="form-group">
                        <label for="Pan">Customer Pan Number:- </label>
                        <input type="text" class="form-control" id="Pan" placeholder="Enter Pan Number..." name="pan" required>
                    </div>
                    <div class="form-group">
                      <label for="Password"> Enter Password</label>
                      <input type="password" class="form-control" id="Password" placeholder="Password" name="password" required>
                    </div>
                    <center><button type="submit" class="btn btn-default">Submit</button></center>
                    <br>
                  </form>
            </div>
        </div>
    </div>
    <div class="col-sm-2 side"></div>
</body>
</html>