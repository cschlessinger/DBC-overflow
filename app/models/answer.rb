class Answer < ActiveRecord::Base
  has_many :scores, as: :scorable
  belongs_to :user
  has_one :question
end
