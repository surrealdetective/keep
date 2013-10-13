class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :idea_id
      t.integer :user_id

      t.timestamps
    end
  end
end
