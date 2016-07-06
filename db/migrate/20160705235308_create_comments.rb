class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, default: '',  null: false
      t.integer :author_id, default: nil, null: false
      t.integer :post_id, default: nil, null: false

      t.timestamps null: false
    end
  end
end
