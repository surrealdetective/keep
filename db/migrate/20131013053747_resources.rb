class Resources < ActiveRecord::Migration
  def change
  	create_table :resources do |t|
  		t.string :title
      t.text :content
      t.string :link
      t.integer :idea_id
      t.integer :user_id

      t.timestamps
    end
  end
end
