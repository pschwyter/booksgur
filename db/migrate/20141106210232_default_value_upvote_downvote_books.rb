class DefaultValueUpvoteDownvoteBooks < ActiveRecord::Migration
  def change
  	change_column :books, :upvote, :integer, :default => 0
  	change_column :books, :downvote, :integer, :default => 0
  end
end
