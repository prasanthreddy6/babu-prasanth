class AddFruitToStudents < ActiveRecord::Migration
  def change
    add_column :students, :fruit_name, :text
  end
end
