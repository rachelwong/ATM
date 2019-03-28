require_relative 'atm_model'
require_relative 'atm_view'

class ATMController

    def initialize
        @model = ATMModel.new # initialize a model object to use model methods
        @view = ATMView.new # initialize a view object to use view methods
    end

    def run(balance)
        @view.welcome_view # welcome screen

        @view.balance_view(balance) # show balance

        command = @view.menu_view # show menu

        while command != "Q"
            case command
                when "D"
                    deposit = @model.deposit(balance)
                    @view.balance_view(balance) # show balance
                    # Call model to Deposit method
                when "W"
                    withdraw = @model.withdraw(balance)
                    @view.balance_view(balance) # show balance
                    # Call model to Withdrawal method
                when "B"
                    # Call model to balance update method
                    puts "Current Balance: #{balance}."
                else 
                    @view.error_view #error message
            end
            command = @view.menu_view # show menu
        end
        @view.exit_view
    end
end