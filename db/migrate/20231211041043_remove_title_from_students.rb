class RemoveTitleFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :title, :string
  end
end
