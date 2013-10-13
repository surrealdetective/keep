class AddInspirationToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :inspiration, :text
  end
end
