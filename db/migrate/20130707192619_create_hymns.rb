class CreateHymns < ActiveRecord::Migration
  def change
    create_table :hymns do |t|
      t.string :link
      t.integer :hymn_number
      t.string :title

      t.timestamps
    end
  end
end
