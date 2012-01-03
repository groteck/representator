class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :legal_name
      t.string :trade_name
      t.string :nif
      t.string :address
      t.integer :user_id
      t.integer :telephone
      t.string :email

      t.timestamps
    end
  end
end
