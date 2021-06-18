class AddUserIdToManages < ActiveRecord::Migration[6.1]
  def up
    execute 'DELETE FROM manages;'
    add_reference :manages, :user, null: false, index: true
  end

  def down
    remove_reference :manages, :user, index: true
  end
end
