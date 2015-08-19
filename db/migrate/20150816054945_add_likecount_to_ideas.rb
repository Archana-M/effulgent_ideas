class AddLikecountToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :likecount, :integer
  end
end
