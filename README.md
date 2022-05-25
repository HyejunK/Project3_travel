<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FaLcon_My shop</title>
    <link rel="stylesheet" href="myshop.css">
    <script type="text/JavaScript" src="/juso_support_center/js/jquery-1.8.3.min.js" ></script>
</head>
<body>
    <form action="#" method="post">
        <div class="joinshop">
            <p>
                <span class="tit1">사업장 등록</span>
                <span class="tit2">Open a Store</span>
            </p>
            <div>
                <label for="shopname">상호명</label>
                <input type="text" name="Enterprise_name" placeholder="Shop name" />
                <input type="submit" class="shopnameBtn" value="중복확인" />     <!--중복확인 버튼 필요없으면 삭제!!!-->
            </div>
            <div>
                <label>종류</label>     <!--여기 name 정했는지 확인~-->
                <input type="radio" name="#" value="hotel"><span>숙박시설</span>
                <input type="radio" name="#" value="hotel"><span>문화, 레저</span>
            </div>
            <div>
                <label>대표 전화번호</label>
                <input type="text" class="phnumber" name="Enterprise_regnum" maxlength="12" placeholder="'-'없이 숫자만 입력" />
            </div>
            <div>
                <label>이메일</label>   <!--여기도 칼럼명이 없는 듯 합니다 필요없으면삭제-->
                <input type="email" id="email" name="Enterprise" placeholder=" E-mail"/>
            </div>
           <div>
                <label>사업장 주소</label>  <!--name명 확인~-->
                <input name="Enterprise_adress" id="member_post"  type="text" placeholder="Zip Code" readonly onclick="findAddr()">
                <input name="Enterprise_adress" id="member_addr" type="text" placeholder="Address" readonly> <br>
                <input name="Enterprise_adress" type="text" placeholder="Detailed Address">
            </div>
            
            <div>
                <label>사진 등록</label>  <!--여기도 칼럼명 없음-->
            </div><form method="post" action="/fileUpload" enctype="multipart/form-data">
                <input id="fileInput" type="file" name="uploadfile" multiple="multiple">
                <input type="submit">
            </form>
            <img id="preview-image" src="">
            <div>
                <label>사업장 소개 및 상세설명</label><br/>     <!--칼럼명 없음-->
                <textarea name="#"></textarea>
            </div>
            <div class="shopplusBtn">
                <input type="submit" value="가게 등록"/>
            </div>
        </div>
        <script>
            function findAddr(){
                new daum.Postcode({
                    oncomplete: function(data) {
                        
                        console.log(data);
                        
                        
                        var roadAddr = data.roadAddress; // 도로명 주소 변수
                        var jibunAddr = data.jibunAddress; // 지번 주소 변수
                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
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
            <script>
                onload = function() {
                    const inputImage = document.getElementById("fileInput");
                    inputImage.addEventListener("change", ev => {
                        readImage(ev.target)
                    });
            
                    function readImage(input) {
                        const reader = new FileReader();
            
                        reader.onload = ev => {
                            const previewImage = document.getElementById("preview-image")
                            previewImage.src = ev.target.result
                        }
                        reader.readAsDataURL(input.files[0]);
                    }
                }
        </form>
</body>
</html>
