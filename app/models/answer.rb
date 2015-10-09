class Answer < ActiveRecord::Base
  has_many :scores, as: :scorable
  has_many :responses, as: :respondable
  belongs_to :user
  has_one :question
end
