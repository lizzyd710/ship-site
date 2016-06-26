class Work < ActiveRecord::Base
	belongs_to :fandom
	has_many :characters
	belongs_to :user
	has_many :chapters #the ao3 work model does have this so I did one thing right
	
	#self.abstract_class = true 
	#will be an abstract class but won't be for testing
end