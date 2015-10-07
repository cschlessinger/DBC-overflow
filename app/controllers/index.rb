#routes and sheeettt

get '/' do

end

get '/login' do

end

get '/questions' do
  erb :question_list
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  @sorted = Question.sort_answers(@question)
  p @sorted
  # @question.sort_answers
  erb :question
end

post '/questions/:id/upvote' do
end

post '/questions/:id/downvote' do
end
