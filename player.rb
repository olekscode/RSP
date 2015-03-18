class Player
    attr_accessor :name

    def initialize(name)
        @name = name
    end

private
    # TODO: move this to Judge class
    def output(num)
        log = "#{@name}: "

        if num == 0
            puts log + "rock".upcase
        elsif num == 1
            puts log + "scissors".upcase
        else
            puts log + "paper".upcase
        end
    end

public
    def play
         @choice = rand(3)
         output(@choice)
    end

    def choice
        return @choice
    end
end
