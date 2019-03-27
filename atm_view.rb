class ATMView
    def welcome_view
        puts
        puts " ---------------------"
        puts "Welcome to the ATM app."
        puts " ---------------------"
        puts
    end

    def overdrawn_view
        puts
        puts "<<<<<<<<<<<<<<<<<< ERROR >>>>>>>>>>>>>>>>>>"
        puts "You cannot overdraw more than your balance"
        puts "<<<<<<<<<<<<<<<<<< ERROR >>>>>>>>>>>>>>>>>>"
        puts
    end

    def error_view
        puts
        puts "<<<<<<<<<<<<<<<<<< ERROR >>>>>>>>>>>>>>>>>>"
        puts "          Invalid input! Try again."
        puts "<<<<<<<<<<<<<<<<<< ERROR >>>>>>>>>>>>>>>>>>"
        puts
    end

    def deposit_view(amount)
        puts
        puts "-----------------------------------------"
        puts "    You have chosen to deposit $#{amount}."
        puts "-----------------------------------------"
        puts
    end

    def withdrawal_view(amount)
        puts
        puts "-----------------------------------------"
        puts "    You have chosen to withdraw $#{amount}."
        puts "-----------------------------------------"
        puts
    end

    def balance_view(balance)
        puts
        puts "*********************************"
        puts "   Your current balance is $#{balance}."
        puts "*********************************"
    end

    def exit_view
        puts
        puts " ---------------------"
        puts "Goodbye! Until next time"
        puts " ---------------------"
    end
end