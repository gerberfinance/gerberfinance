class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :company_name
      t.string :email
      t.integer :telephone
      t.string :reason

      t.timestamps
    end
  end
end
