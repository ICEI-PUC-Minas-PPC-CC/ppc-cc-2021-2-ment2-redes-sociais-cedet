class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.boolean :correct, default: false

      t.timestamps
    end
  end
end
