class AddDeviseToUsers < ActiveRecord::Migration[8.0]
  def change
    change_table :users do |t|
      # Добавление нового столбца для Devise
      t.string :encrypted_password, null: false, default: ""
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
    end

    # Добавление индексов, если они не существуют
    add_index :users, :email, unique: true unless index_exists?(:users, :email)
    add_index :users, :reset_password_token, unique: true unless index_exists?(:users, :reset_password_token)
  end
end
