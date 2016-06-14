class Changetodefault < ActiveRecord::Migration
  def change

  	change_column :students, :name, :string, :default => "hello"

  end
end
