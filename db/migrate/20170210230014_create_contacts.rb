class CreateColors < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string :name
		t.string :tel
		t.string :account
		
      t.timestamps null: false
    end
  end
end
