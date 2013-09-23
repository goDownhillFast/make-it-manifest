class AddBodyHtmlToProgram < ActiveRecord::Migration
  def change
    add_column :programs, :body_html, :text
  end
end
