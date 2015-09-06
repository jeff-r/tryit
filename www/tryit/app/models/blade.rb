class Blade < ActiveRecord::Base
  has_many :reviews, class_name: BladeReview
  belongs_to :user
end
