class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    
    add_column :users, :account_no, :bigint
    add_column :users, :full_name, :string
    

  end
end
