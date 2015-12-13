module KnowsTheUserInterface



	class UserInterface
		
		include Capybara::DSL
		
		def withdraw_from(account, amount)
			
		    visit '/'
			fill_in 'Account', :with => account.number
			fill_in 'Amount', :with => amount
			click_button 'Withdraw'	
		end

	end


		def cash_slot
		
			@cash_slot ||= Cashslot.new(serial_number: 1)
			
		end

	

		def my_account

			@my_account ||= Account.create(:number => "test", :balance =>0)
	
		end

		def teller
			@teller ||= UserInterface.new
			
		end



	
	
	

end

World(KnowsTheUserInterface)