class AddInfToUsers < ActiveRecord::Migration
  def change
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :about_me, :text
    add_column :users, :age, :integer
    add_column :users, :gender, :string
  end
end
