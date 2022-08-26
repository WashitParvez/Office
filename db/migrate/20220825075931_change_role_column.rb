class ChangeRoleColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :roles ,:type , :field
  end
end
