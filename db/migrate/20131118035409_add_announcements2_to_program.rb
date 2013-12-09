class AddAnnouncements2ToProgram < ActiveRecord::Migration
  def change
    add_column :programs, :announcements2, :text
  end
end
