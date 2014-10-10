class CreateTodos < ActiveRecord::Migration
  def up
    create_table :todos do |t|
    	t.integer "user_id"
    	t.string "todoname"
    	t.boolean "completed"
        t.timestamps
    end
      add_index("todos","user_id")
  end
  def down
  	drop_table :todos
  end
end
