class RemoveAuthorFromNote < ActiveRecord::Migration[7.0]
  def change
    remove_column :notes, :author, :string
  end
end
