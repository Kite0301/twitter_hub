class Tweet < ActiveRecord::Base
  validates :text, presence: true
  validates :date, presence: true
  validates :uri, presence: true, uniqueness: true
end
