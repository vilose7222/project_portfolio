
// 스크롤시 네비게이션 바 움직임
let prevScrollPos = window.scrollY;
window.addEventListener('scroll', function () {
  let currentScrollPos = window.scrollY;
  let navbar = document.querySelector('.navbar');

  if (prevScrollPos > currentScrollPos) {
    navbar.style.display = 'block';
  } else {
    navbar.style.display = 'none';
  }

  prevScrollPos = currentScrollPos;
});

// Skills 영역 도달 시 프로그레스 바 작동
window.addEventListener('scroll', () => {
  const skillsSection = document.getElementById('skills');
  const skillsSectionOffset = skillsSection.offsetTop;
  const windowHeight = window.innerHeight;

  if (window.pageYOffset > skillsSectionOffset - windowHeight + 200) {
    skillsSection.classList.add('animate');
  }
});

// Member 텍스트 hover 컨트롤
const teamMembers = document.querySelectorAll('.team-member-box');
teamMembers.forEach((member) => {
  const name = member.querySelector('.team-member-name');
  const role = member.querySelector('.team-member-role');
  const description = member.querySelector('.team-member-description');

  member.addEventListener('mouseenter', () => {
    role.style.display = 'none';
    description.style.display = 'block';
  });

  member.addEventListener('mouseleave', () => {
    role.style.display = 'block';
    description.style.display = 'none';
  });
});


// 상위버튼 만들기 (About Me 영역부터)
window.addEventListener('scroll', function () {
  let aboutMeSection = document.getElementById('about_me');
  let button = document.getElementById('scrollToTopButton');

  if (window.scrollY >= aboutMeSection.offsetTop) {
    button.style.display = 'block';
  } else {
    button.style.display = 'none';
  }
});

document.getElementById('scrollToTopButton').addEventListener('click', function () {
  window.scrollTo({ top: 0, behavior: 'smooth' });
});

// 회원가입 팝업창 이벤트
function openPopup(event) {
  event.preventDefault(); 
  let overlay = document.getElementById('overlay');
  let popup = document.getElementById('popup');
  overlay.style.display = 'block';
  popup.classList.add('show');
}
function closePopup() {
  let overlay = document.getElementById('overlay');
  let popup = document.getElementById('popup');
  overlay.style.display = 'none';
  popup.classList.remove('show');
}
window.addEventListener('DOMContentLoaded', function () {
  let overlay = document.getElementById('overlay');
  let popup = document.getElementById('popup');
  overlay.style.display = 'none';
  popup.style.display = 'none';
});
function maskPassword(input) {
  input.value = "*".repeat(input.value.length);
}