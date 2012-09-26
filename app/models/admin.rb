class Admin < ActiveRecord::Base
  attr_accessible :nick, :password
end
