class Player
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def output
        if @choice == 0
            puts "#{@name}: ROCK"
        elsif @choice == 1
            puts "#{@name}: SCISSORS"
        else
            puts "#{@name}: PAPER"
        end
    end

    def play
         @choice = rand(3)
         return @choice
    end

    def choice
        return @choice
    end
end
