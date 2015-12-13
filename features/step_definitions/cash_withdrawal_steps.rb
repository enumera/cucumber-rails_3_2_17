

Given(/^I have credited (#{CAPTURE_CASH_AMOUNT}) in my account$/) do |amount|
  my_account.credit(amount)
  my_account.balance.should eq(amount)
  puts my_account.balance
end





When(/^I withdraw (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
    visit '/'
	fill_in 'Account', :with => my_account.number
	fill_in 'Amount', :with => amount
	click_button 'Withdraw'	

	a = Account.find_by_number("test")

	puts "this is the balance after the controller #{a.balance}"
	
end

Then(/^the balance of my account should be (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
 
   puts "this is account balance at the end #{my_account.balance}"
   my_account.number.should eq("test")
   my_account.reload.balance.should eq(amount), "Expected the balance to be #{amount} but it was #{my_account.balance}"
  
end