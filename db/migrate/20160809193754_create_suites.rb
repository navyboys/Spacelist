class CreateSuites < ActiveRecord::Migration
  def change
    create_table :suites do |t|
      t.integer :price
      t.string :location
      t.references :user
      t.references :property
      t.timestamps
    end
  end
end
