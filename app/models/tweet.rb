class Tweet < ActiveRecord::Base
  belongs_to:users
  validates :title , :text , presence: true
end
