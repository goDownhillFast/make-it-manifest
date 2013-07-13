class ChangeItemNameToText < ActiveRecord::Migration
  def up
    remove_column :items, :name
    add_column :items, :content, :text
  end

  def down
    remove_column :items, :content
    add_column :items, :name, :string
  end
end
