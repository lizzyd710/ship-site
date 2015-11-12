class Work < ActiveRecord::Base
	belongs_to :fan
	has_many :characters
	belongs_to :user
	
	#self.abstract_class = true 
	#will be an abstract class but won't be for testing
end