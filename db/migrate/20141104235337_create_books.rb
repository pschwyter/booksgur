class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.integer :year
      t.text :description
      t.string :buy

      t.timestamps
    end
  end
end
