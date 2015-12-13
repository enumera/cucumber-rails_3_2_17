class TellersController < ApplicationController
  def withdraw
  	teller = Teller.new
  	puts params
  	account = Account.where(number: params[:account])
  	account[0].debit(params[:amount].to_i)
	# teller.withdraw_from(account[0], params[:amount].to_i)
	@account = account[0]
  end
end
