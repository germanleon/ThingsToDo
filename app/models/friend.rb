class Friend < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_name, :user_id
end
