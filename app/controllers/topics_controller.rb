class TopicsController < ApplicationController
  Layout 'blog'
  
  def index
    @topics = Topic.all
  end

  def show
    @topics = Topic.find(params[:id])
    
    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.page(params[:page]).per(5)
    else
      @blogs = @topic.blogs.published.recent.page(params[:page]).per(5)
    end
  end
end
