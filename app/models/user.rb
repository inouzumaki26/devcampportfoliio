class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name
 
  def first_name
    begin
      self.name.split.first.oops
    rescue
    end
  end
  
  def last_name
    self.name.split.last
  end
end


def get_facebook_massages
  begin
    contacts_fb.oops
    @messages = retrieves_messages
  rescue => e
    flash[:error] = "Error occured contacting Facebook: #{e}"
  end
end