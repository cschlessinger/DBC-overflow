get '/questions' do
  @questions = Question.all
  erb :question_list
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  erb :question
end

get '/question/new' do
  @user_id = session[:user_id]
  erb :'newquestion'
end

post '/questions' do
  Question.create(params[:question])
  redirect 'questions'
end

post '/questions/:question_id/upvote' do
  if session[:user_id]
    question = Question.find(params[:question_id])
    question.scores.create(value: 1)
    score = question.scores.count
    score.to_s
  else
    return 'redirect'
  end
end

post '/questions/:question_id/downvote' do
  if session[:user_id]
    question = Question.find(params[:question_id])
    question.scores.last.destroy
    score = question.scores.count
    score.to_s
  else
    return 'redirect'
  end
end

post '/questions/:question_id/answers/:answer_id/upvote' do
  if session[:user_id]
    answer = Answer.find(params[:answer_id])
    answer.scores.create(value: 1)
    score = answer.scores.count
    score.to_s
  else
    return 'redirect'
  end
end

post '/questions/:question_id/answers/:answer_id/downvote' do
  if session[:user_id]
    answer = Answer.find(params[:answer_id])
    answer.scores.last.destroy
    score = answer.scores.count
    score.to_s
  else
    return 'redirect'
  end
end
