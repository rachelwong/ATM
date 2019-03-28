require_relative 'atm_model'
require_relative 'atm_view'

class ATMController

    def initialize
        @model = ATMModel.new # initialize a model object to use model methods
        @view = ATMView.new # initialize a view object to use view methods
    end

    def run(balance)
        correct_pin = false
        pin_try = 3

        pin = @view.enter_pin
                
        @view.welcome_view # welcome screen

        @view.balance_view(balance) # show balance

        command = @view.menu_view # show menu
        
        while command != "Q"
            case command
                when "D"
                    # Call model to Deposit method
                    deposit_amount = @view.get_deposit_amount # Get Amount
                    balance = @model.deposit(deposit_amount, balance) # Add Deposit
                    @view.balance_view(balance) # Show updated balance
                when "W"
                    # Call model to Withdrawal method
                    withdraw_amount = @view.get_withdraw_amount # Get amount
                    balance = @model.withdraw(withdraw_amount, balance) # Withdraw amount
                    @view.balance_view(balance) # Show updated balance
                when "B"
                    # Call model to balance update method
                    @view.balance_view(balance)
                else 
                    @view.error_view #error message
            end
            command = @view.menu_view # show menu
        end
        @view.exit_view
    end
end