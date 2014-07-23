class PostsController < ApplicationController

def new

end

def create
  render plain: params[:posts].inspect
end

end
