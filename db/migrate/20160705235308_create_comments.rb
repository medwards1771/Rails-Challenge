class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name, default: '',  null: false
      t.string :email, default: '',  null: false
      t.string :text, default: '',  null: false
      t.integer :post_id, default: nil, null: false

      t.timestamps null: false
    end
  end
end
