class Question < ActiveRecord::Base
  has_many :scores, as: :scorable
  belongs_to :user
  has_many :answers

  def self.sort_answers(arg)
    p "*" * 80
    result = []
    p arg.answers.each do |arg|
      result << arg
    end
    result.sort! do |first, second|
      second.scores.count <=> first.scores.count
    end
    p result
  end
end
