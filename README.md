# Project3_travel

*{
    font-family: 'Noto Sans KR', sans-serif;
    list-style-type: none;
    text-decoration: none;
    margin:0;
}
body{margin: 0;}    /*font-family지정 필요*/
a{text-decoration: none; color: #dbd5d3;}
.navbar{
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #385a45;
    padding: 8px 12px;
    top: 0; /*position과 top은 네비게이션바를 최상단에 고정하기 위함, 불필요하면 두 개는 삭제*/    
}
.navbar_logo{color: #a7c299; left: 50px; font-size: 24px;}
.navbar_menu{
    display: flex;
    list-style: none;
    padding-left: 0;
}
.navbar_menu li{
    padding: 8px 12px;
    display: inline-block;  /*불필요할 시 display, vertical-align을 삭제해본다*/
    vertical-align: top;
    font-size: 20px;
}
.navbar_subMenu{list-style: none; display: none;}
.navbar_menu li:hover{background-color: #5c8868; border-radius: 4px;}
.navbar_toggleBn{
    position: absolute;
    right: 25px;
    color:#a7c299;
    display: none;
    font-size: 24px;
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
        padding-left: 0;
    }
    .navbar_menu li{width: 100%; text-align: center;}
    .navbar_toggleBn{display: block;}
    .navbar_menu.active{display: flex;}
}

header{ background-color: #385a45;}  /*padding: 10px 30px; 을 넣는게 나은지 아닌지 고민*/
header .intro_bg img{width: 100%; height: 600px;}
.introSen{ 
    color: #dbd5d3; 
    font-size: 90px; 
    font-weight: bold;
    position: absolute;
    top: 350px;
    left: 70px;
}
.main{background-color: #385a45; padding:10px 30px;}
.main>h1{
    font-size: 45px;
    text-align: center; 
    color: #a7c299;
    padding-top: 100px;
    padding-bottom: 50px;
}
h3{
    font-size:100px; 
    font-weight: bold; 
    position: absolute; 
    top: 270px;
    right: 40px;
}
p{
    font-size: 26px; 
    position: relative; 
    top: 30; 
    left: 30;



}
.mainMenulist{
    display: flex; 
    padding-left: 0;
    justify-content: space-around;

}
.mainMenulist>li{position:relative; align-items: center;}
.mainMenulist img{width:450px; height: 450px;}




@media screen and (max-width: 750px){
    header .intro_bg img{width: 100%; height: 350px;}
    .mainMenulist{flex-direction: column;}
    .mainMenulist img{width:100%; height: 300px;}
    .intro_bg{position:relative;}
    .introSen{
        top: 140px; 
        left: 20px;
        font-size: 45px;
        position: absolute;
    }
    h3{position:absolute; top:140px}
    p{font-size: 24px; display: hidden;}  
    .main>h1{
        font-size: 24px;
        padding-top: 30px;
        padding-bottom: 20px;
    }
    
}

