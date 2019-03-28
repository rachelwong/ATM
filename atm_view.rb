class ATMView
    def menu_view

        command = ""

        # Infinite loop the menu for as long as the user does not select D, W, B, Q
        while command != "Q" && command !="W" && command !="B" && command !="D"
            puts
            puts " *********************************************** "
            puts "       Please select from the following:"
            puts "| {D}eposit | {W}ithdraw | {B}alance | {Q}uit |"
            puts " *********************************************** "
            puts
            command = gets.chomp.upcase
        end
        # Send the command back to controller if it is D, W, B, Q
        return command
    end

    def welcome_view
        puts
        puts " ------------------------"
        puts
        puts "WELCOME TO THE ATM-MVC APP."
        puts
        puts " ------------------------"
    end

    def enter_pin
        puts "Please enter your pin."
        input_put = gets.chomp.strip.to_i
    end

    def incorrect_pin(pin_try)
        puts "Incorrect Pin."
        puts "You have #{pin_try} attempts remaining."
        input_put = gets.chomp.strip.to_i
    end

    def lockout
        puts "You have exhausted all attempts at pin authentication."
        puts "You are not granted entry."
    end

    def get_deposit_amount
        system("clear")
        puts "**** How much do you want to deposit? ****"
        amount = gets.chomp.to_f
        return amount
    end

    def get_withdraw_amount
        system("clear")
        puts "**** How much do you want to withdraw? ****"
        amount = gets.chomp.to_f
        return amount
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