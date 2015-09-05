class BladeReview < ActiveRecord::Base
  belongs_to :blade
  belongs_to :razor
end
