$(function () {
  $('.chzn-select').chosen();

  $('.draggable').draggable({helper:'clone'});


  droppableProgramElt($(".droppable"));

  $( ".sortable-option-list" ).sortable({
    connectWith: ".connectedSortable",
    forcePlaceholderSize: false,
    helper: function(e,li) {
      copyHelper= li.clone();
      droppableProgramElt(copyHelper);
      copyHelper.insertAfter(li);
      return li.clone();
    },
    stop: function() {
      copyHelper && copyHelper.remove();
    }
  });

  $(".connectedSortable").sortable({
    receive: function(e,ui) {
      copyHelper= null;
    }
  });

});

function droppableProgramElt(elt) {
  elt.droppable({
    drop: function (ev, ui) {
      var dragged = $(ui.draggable.context).clone();
      $(this).append(dragged);
      //      console.log(ui);
//      console.log(ui.draggable.context);
//      console.log($(ui.draggable.context).data('pic'));

    }
  });
}