$(document).ready(function() {

  let originalModal = $('#add-movie-modal').clone()
  $('#add-movie-modal').on('hidden.bs.modal', function () {
    location.reload();
  });

  const showMessage = function() {
    $('#message').text("Succesfully saved!")
    $('#message').css('display','block');
  }

  $('#save-btn-actor').on('click', function() {
    setTimeout(() => window.location.reload(), 3000);
    showMessage();
  });

  $('#save-btn-director').on('click', function() {
    setTimeout(() => window.location.reload(), 3000);
    showMessage();
  });

  $('#save-btn-movie').on('click', function() {
    setTimeout(() => window.location.reload(), 3000);
    showMessage();
  });


});
