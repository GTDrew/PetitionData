class CreateSigners < ActiveRecord::Migration
  def change
    create_table :signers do |t|
      t.string :name
      t.string :location
      t.datetime :date

      t.timestamps null: false
    end
  end
end
