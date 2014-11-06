class UpvoteDownvoteBooks < ActiveRecord::Migration
  def change
  	add_column :books, :upvote, :integer
  	add_column :books, :downvote, :integer
  end
end
