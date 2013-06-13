class AddStuff < ActiveRecord::Migration
  def up
    create_table :subscriptions do |t|
      t.integer :user_id
      t.string :plan
      t.string :stripe_customer_identifier
      t.string :stripe_card_token
      t.string :status
      t.string :coupon

      t.timestamps
    end
  end

  def down
    drop_table :subscriptions
  end
end
