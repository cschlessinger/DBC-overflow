class Score < ActiveRecord::Base
  belongs_to :scorable, polymorphic: true
end
