class AddSecondStudentId < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :second_student_id, :integer
  end
end
