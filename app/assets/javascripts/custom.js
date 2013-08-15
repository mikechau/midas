$(document).ready(function(){

  function validateEmail(sEmail) {
    var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    if (filter.test(sEmail)) {
      return true;
    }  else {
      return false;
    }
  }

  $('a[href="' + this.location.pathname + '"]').parent().addClass('active');

  $('#btnValidate').on('click', function(e){
    var sEmail = $('#txtEmail').val();

    if ($.trim(sEmail).length == 0){
      alert('Please enter a valid email address');
      return false;
    }

    if (validateEmail(sEmail)){
      return true;
    } else {
      alert('Invalid Email Address');
      return false;
    }

  });
});