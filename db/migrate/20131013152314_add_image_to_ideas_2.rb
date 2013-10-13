class AddImageToIdeas2 < ActiveRecord::Migration
  def change
    add_column :ideas, :image, :string
  end
end
