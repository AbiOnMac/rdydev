class AddTitleRefToStudents < ActiveRecord::Migration
  def change
    add_reference :students, :title, index: true, foreign_key: true
  end
end
