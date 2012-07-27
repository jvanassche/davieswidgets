class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Title
      t.string :WorkPhone

      t.timestamps
    end
  end
end
