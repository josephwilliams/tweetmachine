class Tweet < ActiveRecord::Base
  validates :body, length: { minimum: 5 }
  
end
