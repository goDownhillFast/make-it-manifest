class Person < ActiveRecord::Base
  attr_accessible :about_me, :facebook_url, :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}"
  end
end
