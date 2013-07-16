class CreateBookstores < ActiveRecord::Migration
  def change
    create_table :bookstores do |t|
      t.belongs_to :books
      t.string :name
      t.string :location
      # t.integer :book_id
      # t.timestamps
    end

    create_table :books do |t|
      t.belongs_to :bookstore
      t.belongs_to :author
      t.string :title
      t.decimal :price
      t.integer :publication_date
      # t.integer :author_id
      # t.integer :bookstore_id
    end

    create_table :authors do |t|
      t.string :name
    end

    create_table :books_bookstores, :id => false do |t|
      t.belongs_to :book
      t.belongs_to :bookstore
      # t.integer :book_id
      # t.integer :bookstore_id
    end
  end
end