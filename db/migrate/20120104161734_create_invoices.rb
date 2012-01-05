class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :discount1
      t.integer :discount2
      t.integer :discount3
      t.integer :user_id
      t.integer :client_id
      t.string :paid_concept

      t.timestamps
    end
  end
end
