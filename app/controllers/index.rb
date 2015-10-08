get '/questions' do
  @questions = Question.all

  erb :question_list
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  @sorted = Question.sort_answers(@question)
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



post '/questions/:id/upvote' do
end

post '/questions/:id/downvote' do
end
