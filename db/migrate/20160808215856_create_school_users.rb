class CreateSchoolUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :school_users do |t|
      t.integer :school_id, :null => false
      t.integer :user_id, :null => false
      t.timestamps
    end
    add_index :school_users, :school_id
    add_index :school_users, :user_id

  end
end
