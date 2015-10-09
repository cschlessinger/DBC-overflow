$(document).ready(function() {
  upvoteAnswer();
  downvoteAnswer();
  upvoteQuestion();
  downvoteQuestion();
});

var upvoteAnswer = function() {
  $('.answer > .scores a .arrow_up').click(function(event) {
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

var downvoteAnswer = function() {
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

var upvoteQuestion = function() {
  $('.questions > .scores a .arrow_up').click(function(event) {
    event.preventDefault();
    target = this;
    var question_id = $('.container').attr('id');
    $.ajax({
      url: '/questions/' + question_id + '/upvote',
      method: 'post'
    })
    .done(function(response) {
      if (response == 'redirect'){
        window.location.replace('/')
      }
      else{
        $(target).parent().parent().children('.score').html(response);
      }
    })
  });
}

var downvoteQuestion = function() {
  $('.questions > .scores a .arrow_down').click(function(event) {
    event.preventDefault();
    target = this;
    var question_id = $('.container').attr('id');
    $.ajax({
      url: '/questions/' + question_id + '/downvote',
      method: 'post'
    })
    .done(function(response) {
      if (response == 'redirect'){
        window.location.replace('/')
      }
      else{
        $(target).parent().parent().children('.score').html(response);
      }
    })
  })
}

