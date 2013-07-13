class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :last_name
      t.string :first_name
      t.string :facebook_url
      t.text :about_me

      t.timestamps
    end
  end
end
