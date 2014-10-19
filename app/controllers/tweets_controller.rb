class TweetsController < ApplicationController
	
	before_action :authenticate_user!

	def new
		@tweet = Tweet.new
		@tweets = Tweet.all
	end

	def create
		@tweet_to_create = Tweet.new(tweet_params)
		@tweet_to_create.user = current_user
		
		if @tweet_to_create.save
			flash.now["success"] = "you have created a tweet"
		else
			flash.now["danger"] = "please review the errors below."
		end










		print "the tweet is" + @tweet.inspect.to_s

		@tweet = Tweet.new

		@tweets = Tweet.all 

		render 'new'
	end

	def edit
	end

	def show
	end

	def index
	end

	def tweet_params
		params.require("tweet").permit("conten")
	end
end
