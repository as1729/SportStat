class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :name, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
