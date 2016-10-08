class AddCheckBoxToBooks < ActiveRecord::Migration
  def change
    add_column :books, :check_box, :boolean
  end
end
