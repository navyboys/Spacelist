class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :city
      t.text :address
      t.references :user
      t.timestamps
    end
  end
end
