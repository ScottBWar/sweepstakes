class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|
    	t.string :firstname, null: false
    	t.string :lastname, null: false
    	t.string :email, null: false
    	t.string :birthday, null: false
    	t.string :zipcode, null: false
    	t.string :provider, null: false

      t.timestamps null: false
    end
  end
end
