class Character < ActiveRecord::Base
	belongs_to :fandom
	belongs_to :works
end
