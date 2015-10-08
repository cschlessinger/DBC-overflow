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

post '/questions/:question_id/answers/:answer_id/upvote' do
  answer = Answer.find(params[:answer_id])
  answer.scores.create(value: 1)
  score = answer.scores.count
  score.to_s
end

post '/questions/:question_id/answers/:answer_id/downvote' do
  answer = Answer.find(params[:answer_id])
  answer.scores.last.destroy
  score = answer.scores.count
  score.to_s
end
