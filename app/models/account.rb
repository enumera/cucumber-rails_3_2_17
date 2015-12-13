class Account < ActiveRecord::Base
  attr_accessible :balance, :number

  def credit amount

  	self.balance =+ amount
  	self.save
  
  end

  def debit amount
  	puts "hello"
 	


 	self.balance -= amount
 	self.save

  end

  
end
