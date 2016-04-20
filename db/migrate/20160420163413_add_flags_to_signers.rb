class AddFlagsToSigners < ActiveRecord::Migration
  def change
    add_column :signers, :flagged, :boolean, default: false
    add_column :signers, :flag_purpose, :string
  end
end
