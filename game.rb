class Game
    def initialize(players)
        @players = players
        @turn = 0

        _play
    end

private
    def _play
        @turn = @turn + 1

        # denotes if someone chose R, S and P relatively
        @isThere = [false, false, false]

        @players.each do |player|
            @isThere[player.play] = true 
        end
             
        if @isThere.count(true) == 2
            @winners = []
            @loosers = []

            winningChoice = _winningChoice

            @players.each do |player|
                if player.choice == winningChoice
                    @winners << player
                else
                    @loosers << player
                end
            end

            _output(true)
            
            @players = @winners
        else
            _output(false)
        end

        if @players.length > 1
            _play
        end
    end

    def _output(status)
        puts "========== Turn #{@turn} =========="
        puts "Players: "

        @players.each do |player|
            puts "\t#{player.name}"
        end
        puts ""

        @players.each do |player|
            player.output
        end
        puts ""

        puts "Game result:"

        if status
            puts "\t#{@winners.length} winners:"
            
            @winners.each do |winner|
                puts "\t\t#{winner.name}"
            end

            puts "\t#{@loosers.length} loosers:"

            @loosers.each do |looser|
                puts "\t\t#{looser.name}"
            end
        else
            puts "\tUNDEFINED"
        end
        puts ""
    end

    def _winningChoice
        if @isThere[0] and @isThere[1] # Rock VS Scissors
            return 0
        elsif @isThere[1] and @isThere[2] # Scissors VS Paper
            return 1
        else # @isThere[0] and @isThere[2] # Rock VS Paper
            return 2
        end
    end
end
