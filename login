<div class="login">
    <div class="loginBox">
        <p style="font-size: 30px; margin-bottom: 10px;">Login</p>
        <div id="topBox">
        <form name="id" action="members/login" method="post">
        <input class="inputText inputBorder" type="emil" id="ID" placeholder="ID | "></br>
        <input class="inputText inputBorder" type="password" id="password" placeholder="PW | " style="margin-top: 8px"><br>
        <input id="inputSubmit" class="inputBorder" type="submit" value="Sign in" style="margin-top: 10px;">
        </form>
        </div>
        <div id="bottomBox">
        <p><a href="/find1">ID/PW 찾기</a>    |    <a href="/joinMember">회원가입</a></p>
        </div>
        </div>
</div>








.login{
        background-color: #385A45;
        margin: -8px;
        height: 100vh;
        color:white;
        }
        .loginBox{
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
        color: white;
        }
        .inputText{
        width: 300px;
        height: 40px;
        font-size: 20px;
        }
        #inputSubmit{
        width 200px;
        height: 40px;
        font-size: 20px;
        }
        .inputBorder{
        border: 3px solid black;
        border-radius: 4px;
        }
        #topBox{
        font-size: 30px;
        text-align: center;
        }
        #bottomBox{
        fond-size: 15px;
        text-align: center;
        }
