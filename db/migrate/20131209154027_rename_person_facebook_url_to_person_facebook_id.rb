class RenamePersonFacebookUrlToPersonFacebookId < ActiveRecord::Migration
  def change
    rename_column :people, :facebook_url, :facebook_id
  end
end
