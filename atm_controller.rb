require_relative 'atm_model'
require_relative 'atm_view'

class ATMController

    def initialize
        @model = ATMModel.new # initialize a model object to use model methods
        @view = ATMView.new # initialize a view object to use view methods
    end

    def run
        @view.welcome_view
    #     command = @view.menu_view

    #     while command != "Q"
    #         case command
    #         when "D"
                
    #         when "W"
    #         when "B"
    #         end
    #     end
    #     @view.exit_view
    # end
end