module KnowsTheUserInterface


		def cash_slot
		
			@cash_slot ||= Cashslot.new(serial_number: 1)
			
		end

	

		def my_account

			@my_account ||= Account.create(:number => "test", :balance =>0)
	
		end

	
	
	

end

World(KnowsTheUserInterface)