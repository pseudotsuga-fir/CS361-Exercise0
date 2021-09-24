class Driver
    def initialize(first_name, last_name, number, team)
        @first_name = first_name
        @last_name = last_name
        @number = number
        @team = team
        @favorite = false
    end

    def getFirstName()
        return @first_name
    end

    def getLastName()
        return @last_name
    end

    def getNumber()
        return @number
    end

    def getTeam()
        return @teram
    end
    
    def setFavorite()
        @favorite = true
    end

    def getDriver()
        if @favorite == true
            return "#{@first_name} #{@last_name} #{@number} #{@team} YEET!"
        else
            return "#{@first_name} #{@last_name} #{@number} #{@team}"
        end
    end

end