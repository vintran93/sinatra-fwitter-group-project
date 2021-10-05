class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.text :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end

#rake db:create_migration NAME=create_users
#rake db:migrate RACK_ENV=test