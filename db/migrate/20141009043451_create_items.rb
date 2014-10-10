class CreateItems < ActiveRecord::Migration
  def up
    create_table :items do |t|
    t.string "cat_id"
    t.string "itemname"
    t.string "nos"
    t.boolean "return"
    t.boolean "stock"
    t.string "user_id"
    t.timestamps
    end
    add_index("items","cat_id")
    add_index("items","itemname")
    add_index("items","user_id")
  end
  def down
  	drop_table :items
  end
end
