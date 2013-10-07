$(function () {
  updateItemList();

  $('.program-page-layout .chzn-container').remove();
  $('.program-page-layout .chzn-select').removeClass('chzn-done').show().chosen();

  $('.chzn-select').change(function () {
    var selected = $(this).find(":selected")
    var modified = $(this).closest('.line').find('.modified-item');
    modified.find('a').attr('href', selected.attr("link"));
    modified.find('.modified-name').append(selected.text());
    if (modified.find('.modified-value')) {
      modified.find('.modified-value').append(selected.attr('value'));
    }
    $(this).closest('.choose-item').remove();
    modified.fadeIn(200, function () {
      commitBodyHTML()
    });

  });

  $('.draggable').draggable({helper: 'clone'});

  droppableProgramElt($(".droppable"));

  $(".sortable-option-list").sortable({
    connectWith: ".connectedSortable",
    forcePlaceholderSize: false,
    helper: function (e, li) {
      copyHelper = li.clone();
      droppableProgramElt(copyHelper);
      copyHelper.insertAfter(li);
      return li.clone();
    },
    stop: function () {
      copyHelper && copyHelper.remove();
    }
  });

  $('.program-page-layout').on('change', function () {
    $.ajax({
      data: {
        body_html: $('program-page-layout').html()
      }
    })
  })

  $(".connectedSortable").sortable({
    receive: function (e, ui) {
      copyHelper = null;
    }
  });

  $('body').on('click', '.sortable-list .icon-trash', function () {
    $(this).closest('li').remove();
    commitBodyHTML()
    updateItemList()
  });

});

function droppableProgramElt(elt) {
  elt.droppable({
    drop: function (ev, ui) {
      console.log($(ui.draggable.context));
//      var dragged = $(ui.draggable.context).clone();
       setTimeout(
         function(){
           $('.program-page-layout .chzn-select').chosen();

           updateItemList();
           commitBodyHTML();
         } ,200
       );
    }
  });
}

function updateItemList(){
  $('.sortable-option-list li').each(function(){
    var this_option = $(this);
    var item_name = this_option.attr('data-item-name');
    var items_in_program = $(".program-page-layout .unique[data-item-name='" + item_name + "']")
    if(items_in_program.length > 0) {
      this_option.hide()
    } else {
      this_option.show()
    }
  })
}

function commitBodyHTML() {
  $.ajax({
    data: {
      body_html: $('.program-page-layout').html()
    },
    type: 'put',
    url: './',
    dataType: 'json',
    complete: function (data) {
      console.log(data)
    }
  })
}