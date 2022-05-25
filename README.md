<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FaLcon_Join Us</title>
    <link rel="stylesheet" href="JoinUs.css">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
    <script src="https://code.jquery.com/jquery-migrate-3.4.0.js"
        integrity="sha256-0Nkb10Hnhm4EJZ0QDpvInc3bRp77wQIbIQmWYH3Y7Vw=" crossorigin="anonymous"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
</head>
<body>
    <form action="#" method="post">
        <div class="join">
            <div class="join_form">
                <p>
                    <span class="title1">회원가입</span>
                    <span class="title2">Join Us</span>
                </p>
                <div>
                    <label for="name">성함</label>
                    <input type="text" id="name" class="name" name="Customer_name" placeholder="name" />
                </div>
                <div>
                    <label for="id">아이디 </label>
                    <input type="text" id="id" class="id" name="Customer_id" placeholder=" 영문, 숫자 포함 8~12자"
                        maxlength="12" minlength="8" />
                    <input type="submit" value="중복확인" class="verBtn">
                </div>
                <div>
                    <label for="pw">비밀번호 </label>
                    <input type="password" id="pw" class="pw" placeholder=" 영문, 숫자 포함 10~20자" name="Customer_pw"
                        maxlength="20" minlength="10" /><br />
                    <label for="ver_pw">비밀번호 확인 </label>
                    <input type="password" id="ver_pw" class="ver_pw" placeholder=" Verify password" />
                </div>
                <div>
                    <label>휴대폰 번호 </label>
                    <input type="text" class="phnumber" name="Customer_Phone" maxlength="12"
                        placeholder="'-'없이 숫자만 입력" />
                </div>
                <div>
                    <label for="email">이메일 </label>
                    <input type="email" id="email" name="Customer_mail" placeholder=" E-mail" />
                </div>
                <div>
                    <label for="datepicker">생년월일</label>
                    <input type="text" id="datepicker" name="Customer_birth">
                </div>
                <div>
                    <label for="member_post">주소</label>       <!--name이 for로 수정된 것 고지-->
                    <input name="Customer_addressNum" id="member_post"  type="text" placeholder="Zip Code" readonly onclick="findAddr()"> <!--여기에 우편번호용 칼럼명이 있어야함-->
                    <input name="Customer_address" id="member_address" type="text" placeholder="Address" readonly> <br>
                    <input name="Customer_address"  type="text" placeholder="Detailed Address">
                </div>
                <p><a href="#"><input type="submit" class="joinBtn" value="Sign in"></a></p>      <!--로그인 된 상태의 메인 페이지로 이동하게 a태그 안 링크작성-->
            </div>
            <script>
                function findAddr(){
                    new daum.Postcode({
                        oncomplete: function(data) {
                            
                            console.log(data);
                            
                            
                            var roadAddr = data.roadAddress; // 도로명 주소 변수
                            var jibunAddr = data.jibunAddress; // 지번 주소 변수
                            
                            document.getElementById('member_post').value = data.zonecode;
                            if(roadAddr !== ''){
                                document.getElementById("member_addr").value = roadAddr;
                            } 
                            else if(jibunAddr !== ''){
                                document.getElementById("member_addr").value = jibunAddr;
                            }
                        }
                    }).open();
                }
                </script>
                <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>  
            
        </div>        
    </form>
</body>

</html>

