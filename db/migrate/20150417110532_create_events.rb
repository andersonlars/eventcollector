class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_id
      t.text :event_desc
      t.datetime :event_date
      t.string :event_category
      t.references :user, index: true
      t.time :event_time
      t.string :authentication_key

      t.timestamps
    end
  end
end
