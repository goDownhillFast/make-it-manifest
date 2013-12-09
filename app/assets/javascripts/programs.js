$(function () {
  $('#cover-image-preview').thumbnailSlider({
    thumb_width	: 130,
    thumb_height: 130,
    easing		: 'easeOutExpo',//easeInBack
    speed		: 600
  });

  $(".micro-preview").click(function(){
    var pic_url = $(this).find('img').attr('data-cover-pic')
    var full_pic_url = "http://media.ldscdn.org/images/media-library/gospel-art/" + pic_url + "-tablet.jpg"
    $("#cover-preview img").attr({'data-cover-pic': pic_url, 'src': full_pic_url})
    $("#cover-preview").attr('src', full_pic_url)
    $.ajax({
      data: {
        program: {cover_pic_url: pic_url}
      },
      type: 'put',
      url: './',
      dataType: 'json',
      complete: function (data) {
      }
    })
  });

  $('#program_date select').on('change', function(){
    $(this).closest('form').submit();
  });

  $('.button-save').on('click', function(){
    commitBodyHTML();
  });

  $('.editor').popline();

  $(window).on('scroll', function(){
    var div_w_bg = $('.show-container');
    var window_position = $(window).scrollTop();
    div_w_bg.css('background-position-y',window_position / 2);
  });

});

function commitBodyHTML() {
  $.ajax({
    data: {
      program: {body_html: $('.program-page-layout').html(),
        announcements: $('#announcements').html(),
        announcements2: $('#announcements2').html()
        }
    },
    type: 'put',
    url: './',
    dataType: 'json',
    complete: function (data) {
    }
  })
}

