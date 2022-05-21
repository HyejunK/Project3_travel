# Project3_travel

body{
    margin: 0;
}


.navbar{
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #385a45;
    padding: 8px 12px;
    position: fixed;
    top: 0;
         /*position: fixed;과 top: 0; 부분은 네비게이션을 모든 페이지에서 최상단에 고정하기 */
}


.navbar_logo{
    color: #a7c299;
}


a{
    text-decoration: none;
    color: #dbd5d3;
}


.navbar_menu{
    display: flex;
    list-style: none;
    padding-left: 0;
}


.navbar_subMenu{
    list-style: none;
    display: none;
    /*폰트 사이즈는 메인 메뉴들보다 작게 해야 함*/
}

.navbar_menu li{
    padding: 8px 12px;
    display: inline-block;      /*오작동 시 display, vertical-align을 삭제해본다*/
    vertical-align: top;
}



.navbar_menu li:hover{
    background-color: #5c8868;
    border-radius: 4px;
}

.navbar_mpMenu > li:hover > .navbar_subMenu{
    display: block;
}
/*여기는 다시 확인 중*/


.navbar_toggleBn{
    position: absolute;
    right: 37px;
    color:#a7c299;
    display: none;
}


@media screen and (max-width: 790px){
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
    .navbar_menu li{
        width: 100%;
        text-align: center;
    }

    .navbar_toggleBn{
        display: block;
    }

    .navbar_menu.active{
        display: flex;
    }

}
