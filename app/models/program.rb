class Program < ActiveRecord::Base
  validates_presence_of :body_html

  attr_accessible :announcements, :program_week, :body_html, :cover_pic_url

  def cover_pic
    cover_pic_url || "new-testament/jesus-raising-lazurus-634865"
  end

end
