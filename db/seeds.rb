Question.create(title: "What is math?", body: "I don't understand math. How does it work", user_id: 1)
Question.create(title: "What is division?", body: "I don't understand division. How does it work", user_id: 2)
Question.create(title: "What is addition?", body: "I don't understand addition. How does it work", user_id: 3)
Question.create(title: "What is multiplication?", body: "I don't understand multiplication. How does it work", user_id: 4)
Question.create(title: "What is subtraction?", body: "I don't understand subtraction. How does it work", user_id: 5)


User.create(email: "alfred@gmail.com", password_hash: "password")
User.create(email: "betsy@gmail.com", password_hash: "password")
User.create(email: "candy@gmail.com", password_hash: "password")
User.create(email: "daniel@gmail.com", password_hash: "password")
User.create(email: "elyse@gmail.com", password_hash: "password")

first = Answer.create(body: "It's how the world works", user_id: 2, question_id: 1)
second = Answer.create(body: "It's the economy, stupid", user_id: 3, question_id: 1)
third = Answer.create(body: "Makes the world go 'round", user_id: 4, question_id: 1)
fourth = Answer.create(body: "Numbers 'n shit", user_id: 5, question_id: 1)

score_first = rand(100)
score_first.times do
  first.scores.create!(value: 1)
end

score_second = rand(100)
score_second.times do
  second.scores.create!(value: 1)
end

score_third = rand(100)
score_third.times do
  third.scores.create!(value: 1)
end

score_fourth = rand(100)
score_fourth.times do
  fourth.scores.create!(value: 1)
end
