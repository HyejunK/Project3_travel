# Project3_travel

const toggleBn = document.querySelector('.navbar_toggleBn');
const menu = document.querySelector('.navbar_menu');

toggleBn.addEventListener('click', () => {
    menu.classList.toggle('active');
});
