class Program < ActiveRecord::Base
  before_create :calc_defaults

  attr_accessible :announcements, :announcements2, :program_week, :body_html, :cover_pic_url

  def cover_pic
    cover_pic_url || "new-testament/jesus-raising-lazurus-634865"
  end

  protected

  def calc_defaults
   self.program_week = Date.today.sunday
   self.body_html = ""
   self.announcements = ""
   self.announcements2 = ""
  end

end
