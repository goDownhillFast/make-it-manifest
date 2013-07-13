class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.date :program_week
      t.text :announcements

      t.timestamps
    end
  end
end
