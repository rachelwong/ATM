require_relative 'atm_model'
require_relative 'atm_view'

class ATMController

    def initialize
        @model = ATMModel.new # initialize a model object to use model methods
        @view = ATMView.new # initialize a view object to use view methods
    end

    def run(balance)
        @view.welcome_view
        command = @view.menu_view
        while command != "Q"
            case command
            when "D"
                deposit = @model.deposit(balance)
                # Call model to Deposit method
            when "W"
                withdraw = @model.withdraw(balance)

                # Call model to Withdrawal method
            when "B"
                 # Call model to balance update method
                get_balance = @model.balance(balance)
            end
        end
        @view.exit_view
    end
end