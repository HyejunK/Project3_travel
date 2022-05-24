<!--네비게이션바 포함한 메인 페이지 html-->


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="MainPage.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/1054b709f3.js" crossorigin="anonymous"></script>
    <title>FaLcon.main</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
</head>
<body>
    <nav class="navbar">    
        <div class="navbar_logo">
            &nbsp;
            <i class="fa-solid fa-feather-pointed"></i>
            <a href="">FaLcon</a>
        </div>
        <ul class="navbar_menu">
            <li><a href="">Hotels</a></li>
            <li><a href="">Culture</a></li>
            <li><a href="">Shop owner</a></li>
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
    <header>
    <section class="intro_bg">
        <div class="introSen">
            FaLcon, <br>
            the Best Looking for Travelling
        </div>
        <img src="https://cdn.pixabay.com/photo/2020/07/08/10/17/car-5383371_960_720.jpg">
        
    </section>
    </header>
    <section class="main">
        <h1>MAIN CONTENTS</h1>
        <ul class="mainMenulist">
            <li>
                <a href="#">    <!--hotel 상세검색 페이지로 이동-->
                    <h3>Hotel</h3>
                    <img src="https://cdn.pixabay.com/photo/2018/02/24/17/17/window-3178666_960_720.jpg">
                    <p>Present yourself the best moment</p>                  
                </a>
            </li>
            <li>
                <a href="#">    <!--Culture 상세검색페이지로 이동-->
                    <img src="https://cdn.pixabay.com/photo/2021/11/08/23/29/nature-6780354_960_720.jpg">
                        <h3>Culture</h3>
                        <p>Time to meet another challenge <br>in your life</p>
                    </a>
            </li>
            <li>
                <a href="#">    <!--Mypage에 리뷰칸으로 링크 넣기-->
                    <img src="https://cdn.pixabay.com/photo/2020/02/19/14/45/man-4862367_960_720.jpg">
                        <h3>Review</h3>
                        <p>We are ready to hear your stories</p>
                    </a>
            </li>
        </ul>
    </section>
    
</body>
</html>
