$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

$('.items').on('submit', function(event) {
  event.preventDefault();

  var $path = $(this).attr('action');
  var $input = $(this).serialize();
  var $method = $(this).attr('method')
  var ajaxRequest = $.ajax({
    method: $method,
    url: $path,
    data: $input
  });
  ajaxRequest.done(function(data) {
    $('#listContainer').append(data);
  })

});


});
