class AddFieldsToStates < ActiveRecord::Migration[5.0]
  def change
    add_column :states, :city, :string
  end
end
