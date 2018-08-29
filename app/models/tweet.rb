class Tweet < ActiveRecord::Base
  belongs_to:users
  validates :title ,presence: true
  validates :text , presence: true
end
