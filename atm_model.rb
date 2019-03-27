require_relative 'atm_view'

class ATMModel

    def initialize
        @view = ATMView.new
    end

    def deposit(balance)
        # get amount
        # show the updated balance
        deposit_amount = @view.get_deposit_amount

        if deposit_amount > 0
            # increment the balance
            balance += deposit_amount
            @view.balance_view(balance)
        else
            puts "Invalid Amount. Try again." 
            deposit_amount = @view.get_deposit_amount
        end
    end

    def withdraw(balance)
        # get amount
        withdraw_amount = @view.get_withdraw_amount
        
        # if the input is negative amount, error message
        if withdraw_amount < 0
            @view.error_view
        # check the amount is not more than balance
        elsif withdraw_amount > balance
            @view.overdrawn_view
        else
            # reduce the balance
            balance = balance - withdraw_amount
            # show the updated balance
            @view.balance_view(balance)
        end
    end

    def set_balance
        p "you're in model set balance!" # DEBUG
    end

    def get_balance
        p "you're in model get balance!" # DEBUG
    end

    def get_amount
        p "you're in model get amount!" # DEBUG
    end
end