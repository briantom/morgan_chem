class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :title
      t.date :date
      t.string :category
      t.text :content

      t.timestamps
    end
  end
end
