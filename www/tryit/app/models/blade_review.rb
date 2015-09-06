class BladeReview < ActiveRecord::Base
  belongs_to :blade
  belongs_to :razor
  belongs_to :user
end
