class CreateContactors < ActiveRecord::Migration
	def change
		create_table :contactors do |t|
			t.string :name
			t.string :email
			t.string :subject
			t.string :message
			t.timestamps
		end
	end
end
