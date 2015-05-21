class CreateTables < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.timestamps
    end

    create_table :pins do |t|
      t.string :title
      t.string :location
      t.string :source
      t.string :content
      t.reference :user
      t.timestamps
    end

    create_table :comments do |t|
      t.string :title
      t.string :content
      t.reference :user
      t.reference :pin
      t.timestamps
    end

  end

end