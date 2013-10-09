class AddCoverPicUrlToProgram < ActiveRecord::Migration
  def change
    add_column :programs, :cover_pic_url, :string
  end
end
