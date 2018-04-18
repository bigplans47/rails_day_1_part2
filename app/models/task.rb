class Task < ActiveRecord::Base
  belongs_to :course

  validates :description, :presence => true
end
