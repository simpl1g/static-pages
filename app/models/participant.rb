class Participant < ActiveRecord::Base
  attr_accessible :email, :name
  validates :email, :presence => true,
            :uniqueness => true,
            :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  validates :name, :presence => true
end
