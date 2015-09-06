class Razor < ActiveRecord::Base
  has_many :blade_reviews
  belongs_to :user
end
