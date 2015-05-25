class CreateTasks < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :tasks do |x|
      x.text :tasktext
      x.boolean :complete

      x.timestamps null: false
    end
  end
end