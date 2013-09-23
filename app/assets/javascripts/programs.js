$(function () {
  $('#edit-program-html').change(function () {
    $.ajax({url: '../',
      type: 'POST',
      data: {body:$(this).html()}
    });
  });
});