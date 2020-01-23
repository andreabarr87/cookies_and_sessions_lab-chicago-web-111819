class CreateProducts

def change
	create_table do |t|
		t.string :product_name
	end
end
	
end