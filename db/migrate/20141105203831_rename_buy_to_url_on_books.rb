class RenameBuyToUrlOnBooks < ActiveRecord::Migration
  def change
  	rename_column :books, :buy, :url
  end
end
