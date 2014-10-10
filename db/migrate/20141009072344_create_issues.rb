class CreateIssues < ActiveRecord::Migration
  def up
    create_table :issues do |t|
    t.string "issuedto"
    t.string "nos"
    t.boolean "return"
    t.string "cat_id"
    t.string "user_id"
    t.timestamps
    end
    add_index("issues","cat_id")
    add_index("issues","user_id")
  end
  def down
  	drop_table :issues
  end
end
