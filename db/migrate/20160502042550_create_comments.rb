class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :author, index: true, foreign_key: true
      t.references :article, index: true, foreign_key: true
      t.string :content

      t.timestamps null: false
    end
  end
end
