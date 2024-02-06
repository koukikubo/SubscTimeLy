class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.references :user,    null: false, foreign_key: true
      t.integer :subsc_name, null:false
      t.text :description,   null:false
      t.integer :price,      null:false
      t.datetime :start_date
      t.datetime :end_date
    end
  end
end
