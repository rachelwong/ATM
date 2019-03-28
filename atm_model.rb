require_relative 'atm_view'
require_relative 'atm_controller'

class ATMModel

    def initialize
        @view = ATMView.new
    end

    def deposit(balance)
        system("clear")
        # get amount
        # show the updated balance
        deposit_amount = @view.get_deposit_amount
        if check_value?(balance)
            # increment the balance
            balance += deposit_amount
            return balance
            @view.balance_view(balance)
        end
        
    end

    def withdraw(balance)
        # get amount
        system("clear")
        withdraw_amount = @view.get_withdraw_amount
        
        # if the input is negative amount, error message
        # check the amount is not more than balance
        # reduce the balance
        if check_balance?(amount)
            balance = balance - withdraw_amount
            return balance
            # show the updated balance
        else
            "Invalid Input! Try again. "
        end
        @view.balance_view(balance)
    end

    def get_balance(balance)
        system("clear")
        @view.balance_view(balance)
        return balance
    end

    def check_value?(amount)
        # if amount is positive, proceed
        if amount > 0
            return true
        end
    end
end