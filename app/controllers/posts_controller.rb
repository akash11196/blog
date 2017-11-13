class PostsController < ApplicationController
def index 
	@posts=Post.all
end
def new
	signed_in_user	
	@post=Post.new
end
def create 
   if User.exists? && User.role=="admin"
   		@post=Post.create()
   end
end
def signed_in_user
 	unless signed_in?
 		redirect_to signin_url, flash: {warning: "Please sign in."}
 	end
end
end

