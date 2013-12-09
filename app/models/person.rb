class Person < ActiveRecord::Base
  attr_accessible :about_me, :facebook_id, :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}"
  end

  def facebook_pic
    "http://graph.facebook.com/" + facebook_id + "/picture?width=320&height=320"
  end

  def facebook_url
    "http://www.facebook.com/" + facebook_id
  end

end
