$(function () {
  $('.chzn-select').chosen();

  $('.chzn-select').change(function () {
    var selected = $(this).find(":selected")
    var modified = $(this).closest('.line').find('.modified-item');
    modified.find('a').attr('href', selected.attr("link"));
    modified.find('.modified-name').append(selected.text());
    if (modified.find('.modified-value')) {
      modified.find('.modified-value').append(selected.attr('value'));
    }
    $(this).closest('.choose-item').remove();
    modified.fadeIn();
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

  $(".connectedSortable").sortable({
    receive: function (e, ui) {
      copyHelper = null;
    }
  });

});

function droppableProgramElt(elt) {
  elt.droppable({
    drop: function (ev, ui) {
      var dragged = $(ui.draggable.context).clone();
      $(this).find('.draggable').remove();
      $(this).append(dragged);
      //      console.log(ui);
//      console.log(ui.draggable.context);
//      console.log($(ui.draggable.context).data('pic'));

    }
  });
}