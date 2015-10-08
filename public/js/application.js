$(document).ready(function() {
  upvote();
  downvote();
});

var upvote = function() {
  $('.arrow_up').click(function(event) {
    event.preventDefault();
    target = this
    var question_id = $('.container').attr('id');
    var answer_id = $(this).parent().parent().parent().attr('id');
    $.ajax({
      url: '/questions/' + question_id + '/answers/' + answer_id + '/upvote',
      method: 'post'
    })
    .done(function(response) {
      if (response == 'redirect'){
        window.location.replace('/')
      }
      else{
        $(target).parent().siblings('.score').html(response);
      }
    })
  });
}

var downvote = function() {
  $('.arrow_down').click(function(event) {
    event.preventDefault();
    target = this
    var question_id = $('.container').attr('id');
    var answer_id = $(this).parent().parent().parent().attr('id');
    $.ajax({
      url: '/questions/' + question_id + '/answers/' + answer_id + '/downvote',
      method: 'post'
    })
    .done(function(response) {
      if (response == 'redirect'){
        window.location.replace('/')
      }
      else{
        $(target).parent().siblings('.score').html(response);
      }
    })
  });
}

