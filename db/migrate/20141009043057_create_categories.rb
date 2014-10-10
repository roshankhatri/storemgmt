class CreateCategories < ActiveRecord::Migration
  def up
    create_table :categories do |t|
    t.string "code"
    t.string "catname"
    t.timestamps
    end
  end
  def down
  	drop_tables :categories
  end
end
