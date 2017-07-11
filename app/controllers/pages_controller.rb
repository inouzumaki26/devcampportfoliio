class PagesController < ApplicationController
  def home
  @posts = Blog.all
  @skills = Skill.all
  end
  @posts = Blog.all
  @skills = Skill.all
  def about
  end

  def contact
  end
end
