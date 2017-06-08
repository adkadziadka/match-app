class AddFirstStudentId < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :first_student_id, :integer
  end
end
