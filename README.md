<!--
1. 로고의 크기와 전체화면일 때의 위치는 <글씨체, 글자크기>의 조정 이후에 들어갈 것임
2. 마이페이지 드롭다운 메뉴의 구현은 코드는 있지만 색상을 정하지 못한 상태라 css에 넣지 않음
3. 상단 메뉴에 가게 주인 메뉴를 넣을지 의논 필요
-->


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1054b709f3.js" crossorigin="anonymous"></script>
    <title>NavigationBar</title>
    <style>
        body{margin: 0;}    /*font-family지정 필요*/
        a{text-decoration: none; color: #dbd5d3;}
        .navbar{
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #385a45;
            padding: 8px 12px
            position: fixed;
            top: 0; /*position과 top은 네비게이션바를 최상단에 고정하기 위함, 불필요하면 두 개는 삭제*/
            width: 100%;
        }
        .navbar_logo{color: #a7c299; left: 50px;}
        .navbar_menu{
            display: flex;
            list-style: none;
            padding-left: 0;
        }
        .navbar_menu li{
            padding: 8px 12px;
            display: inline-block;  /*불필요할 시 display, vertical-align을 삭제해본다*/
            vertical-align: top;
        }
        .navbar_subMenu{list-style: none; display: none;}
        .navbar_menu li:hover{background-color: #5c8868; border-radius: 4px;}
        .navbar_toggleBn{
            position: absolute;
            right: 25px;
            color:#a7c299;
            display: none;
        }
        @media screen and (max-width: 750px){
            .navbar{
                flex-direction: column;
                align-items: flex-start;
                padding: 8px 24px;
            }
            .navbar_menu{
                flex-direction: column;
                align-items: center;
                width: 100%;
                display: none;
            }
            .navbar_menu li{width: 100%; text-align: center;}
            .navbar_toggleBn{display: block;}
            .navbar_menu.active{display: flex;}
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="navbar_logo">
            <i class="fa-solid fa-feather-pointed"></i>
            <a href="">FaLcon</a>
        </div>
        <ul class="navbar_menu">
            <li><a href="">Hotels</a></li>
            <li><a href="">Culture</a></li>
            <li><a href="" class="navbar_mpMenu">My Page</a></li>
                <ul class="navbar_subMenu">
                    <li><a href="">Personal Information</a></li>
                    <li><a href="">Liked Contents</a></li>
                    <li><a href="">Reservations</a></li>
                    <li><a href="">Reviews</a></li>
                </ul>
            <li><a href="">Log In | Join Us</a></li>
            <!--선생님께서는 상단 메뉴에 샵 주인 페이지를 추가하길 바라셨는데 이에 대한 결정 필요-->
        </ul>
        <a href="#" class="navbar_toggleBn">
            <i class="fa-solid fa-bars"></i>
        </a>
        <script>
            const toggleBn = document.querySelector('.navbar_toggleBn');
            const menu = document.querySelector('.navbar_menu');

            toggleBn.addEventListener('click', () => {
            menu.classList.toggle('active');
            });
        </script>
    </nav>
</body>
</html>
