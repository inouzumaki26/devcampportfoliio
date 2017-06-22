class PagesController < ApplicationController
  def home
  end
  @post = Blog.all
  @skills = Skill.all
  def about
  end

  def contact
  end
end
