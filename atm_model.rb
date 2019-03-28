require_relative 'atm_view'
require_relative 'atm_controller'

class ATMModel

    def initialize
        @view = ATMView.new
    end

    def deposit(amount, balance)
        system("clear")
        # get amount
        # show the updated balance
        if check_value?(amount)
            # increment the balance
            p "i'm here"
            balance = balance + amount
            return balance
        end
    end

    def withdraw(amount, balance)
        # get amount
        system("clear")        
        # if the input is negative amount, error message
        # check the amount is not more than balance
        if check_value?(amount) && balance > amount
            # reduce the balance
            balance = balance - amount
            return balance
        else
            @view.error_view
        end
    end

    def get_balance(balance)
        system("clear")
        @view.balance_view(balance)
    end

    def check_value?(amount)
        # if amount is positive, proceed
        if amount > 0
            return true
        end
    end
end