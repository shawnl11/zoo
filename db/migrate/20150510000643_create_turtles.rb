class CreateTurtles < ActiveRecord::Migration
  def change
    create_table :turtles do |t|
      t.boolean :shell

      t.timestamps null: false
    end
  end
end
