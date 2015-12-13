Feature: Cash Withdrawal

	Scenario: Successful withdrawal from an account in credit
		Given I have credited $100 in my account
		When I withdraw $20
		Then the balance of my account should be $80
