# TODO: Model a game. After each step remove those who lost from @players
#       Repeat untill there's only one left.

class Judge
    def initialize(players)
        @players = players
    end

    def play
        @players.each do |player|
            player.play 
        end

        uniqChoices = _uniqChoices
             
        if uniqChoices.length == 2
            @winners = []
            @loosers = []

            @players.each do |player|
                (player.choice == _winningChoice(uniqChoices)) \
                        ? @winners << player : @loosers << player
            end

            # TODO: extract this to an output method
            puts "Game result:"
            puts "\t#{@winners.length} winners:"
            
            @winners.each do |winner|
                puts "\t\t#{winner.name}"
            end

            puts "\t#{@loosers.length} loosers:"

            @loosers.each do |looser|
                puts "\t\t#{looser.name}"
            end
        else
            puts "Game result:\n\tUNDEFINED"
        end
        puts ""
    end

private
    def _uniqChoices
        res = []
        @players.each do |player|
            res << player.choice unless res.include?(player.choice)
        end

        return res.sort
    end

    # arr should contain exactly two elements
    # arr must be sorted
    def _winningChoice(arr)
        if arr[1] - arr[0] == 2 # Rock VS Paper
            return arr[1]
        else
            return arr[0] # Rock VS Scissors or Scissors VS Paper
        end
    end
end
