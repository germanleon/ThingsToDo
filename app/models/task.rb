class Task < ActiveRecord::Base
  belongs_to :user
  attr_accessible :date, :description, :status, :user_id
end
