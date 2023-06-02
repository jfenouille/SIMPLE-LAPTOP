
  document.addEventListener('DOMContentLoaded', function() {
    const confirmBtn = document.querySelector('.confirm-btn');
    const spinner = document.querySelector('.spinner-border');

    confirmBtn.addEventListener('click', function() {
      spinner.classList.remove('d-none');
    });
  });