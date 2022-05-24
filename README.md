<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FaLcon_Change your Info</title>
    <link rel="stylesheet" href="FixPersonalinfo.css">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#datepicker" ).datepicker();
        } );
    </script>
</head>
<body>
    <form action="#" method="post">
    <div class="join">
        <div class="join_form">
            <p>
                <span class="title1">개인정보 변경</span>
                <span class="title2">Change Information</span>
            </p>
            <div>       <!--성함은 디비에서 가져오기-->
                <label for="name">성함</label>
                <input type="text" id="name" class="name" name="Customer_id" placeholder="name"/>
            </div>
            <div>       <!--아이디도 디비에서 가져오기-->
                <label for="id">아이디 </label>
                <input type="text" id="id" class="id" name="#" placeholder=" 영문, 숫자 포함 8~12자" maxlength="12" minlength="8"/>
                <input type="submit" value="중복확인" class="verBtn">
            </div>
            <div>
                <label for="pw">비밀번호 </label>
                <input type="password" id="pw" class="pw" placeholder=" 영문, 숫자 포함 10~20자" name="#" maxlength="20" minlength="10"/><br/>
                <label for="ver_pw">비밀번호 확인 </label>
                <input type="password" id="ver_pw" class="ver_pw" placeholder=" Verify password"/>
            </div>
            <div>
                <label>휴대폰 번호 </label>
                <input type="text" class="phnumber" name="Customer_Phone" maxlength="12" placeholder="'-'없이 숫자만 입력" />
            </div>
            <div>
                <label for="email">이메일 </label>
                <input type="email" id="email" name="Customer_mail" placeholder=" E-mail"/>
            </div>
            <div>
                <label for="datepicker">생년월일</label>
                <input type="text" id="datepicker" name="Customer_birth">
            </div>
            <div>
                <label for="" name="Customer_address">주소</label>
                <input />       <!--주소 api가져오기~~~-->
            </div>
            <span><input type="submit" class="fixBtn" value="변경"></span>
            <span><input type="submit" class="fixBtn" value="탈퇴"><a href="#"></span>
                <!--탈퇴버튼 누르면 DB에서 정보삭제-->
        </div>
       
    </form>
</body>
</html>
