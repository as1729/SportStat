class CreateHumen < ActiveRecord::Migration
  def change
    create_table :humen do |t|
      t.string :name
      t.date :dob
      t.integer :phone

      t.timestamps
    end
  end
end
