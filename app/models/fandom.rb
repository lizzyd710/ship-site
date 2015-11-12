class Fandom < ActiveRecord::Base
	has_many :characters
	has_many :works
end