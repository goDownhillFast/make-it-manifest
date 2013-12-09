class Program < ActiveRecord::Base
  validates_presence_of :body_html

  before_create :calc_date

  attr_accessible :announcements, :announcements2, :program_week, :body_html, :cover_pic_url

  def cover_pic
    cover_pic_url || "new-testament/jesus-raising-lazurus-634865"
  end

  protected

  def calc_date
   self.program_week = Date.today.sunday
  end

end
