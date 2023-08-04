  
  function startAnimation() {
  var progressBars = document.querySelectorAll('.progress-bar');
  for (var i = 0; i < progressBars.length; i++) {
    progressBars[i].classList.add('animate');
  }
}

window.addEventListener('load', function() {
  var pageThree = document.querySelector('#skills');
  pageThree.addEventListener('scroll', function() {
    var pageOffset = pageThree.getBoundingClientRect().top;
    var screenHeight = window.innerHeight;

    if (pageOffset <= screenHeight) {
      var javaProgressBar = document.querySelector('.progress-bar.java');
      javaProgressBar.style.animation = 'progressAnimationJava 1s ease-in-out forwards';

      var htmlProgressBar = document.querySelector('.progress-bar.html');
      htmlProgressBar.style.animation = 'progressAnimationHTML 1s ease-in-out forwards';

      startAnimation();
      pageThree.removeEventListener('scroll', arguments.callee);
    }
  });
});