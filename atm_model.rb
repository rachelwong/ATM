require_relative 'atm_view'
require_relative 'atm_controller'
require 'io/console'
require 'rubygems'
require 'bundler/setup'

class ATMModel

    def initialize
        @view = ATMView.new
    end

    def deposit(balance)
        # get amount
        # show the updated balance
        deposit_amount = @view.get_deposit_amount

        if check_value?(balance)
            # increment the balance
            balance += deposit_amount
            @view.balance_view(balance)
        end
    end

    def withdraw(balance)
        # get amount
        withdraw_amount = @view.get_withdraw_amount
        
        # if the input is negative amount, error message
        # check the amount is not more than balance
        # reduce the balance
        if check_balance?(amount)
            balance = balance - withdraw_amount
            # show the updated balance
            @view.balance_view(balance)
        end
    end

    def get_balance(balance)
        system("clear")
        @view.balance_view(balance)
    end

    def check_value(amount)

        # if amount is positive, proceed
        if amount > 0
            return true

        # if amount is negative, display message
        else
            @view.error_view
        end
    end
end