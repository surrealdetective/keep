class Status < ActiveRecord::Migration
  def change
  	create_table :statuses do |t|
  		t.string :title
      t.text :content
      t.integer :idea_id
      t.integer :user_id

      t.timestamps
    end
  end
end
