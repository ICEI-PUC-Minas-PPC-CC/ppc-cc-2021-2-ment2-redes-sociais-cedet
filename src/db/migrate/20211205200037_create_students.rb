class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :id_professor
      t.string :student_name, null: false
      t.string :teacher_name, null: false
      t.string :school_name, null: false

      t.timestamps
    end
  end
end
