class Tweet < ActiveRecord::Base

		validates :conten, length: { maximum: 140 } 
end 
