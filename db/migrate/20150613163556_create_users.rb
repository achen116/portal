class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :first_name, limit: 50
      t.string   :last_name, limit: 50
      t.string   :username, limit: 50
      t.string   :email, limit: 50
      t.string   :encrypted_pw

      t.timestamps
    end
  end
end
