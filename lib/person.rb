# your code goes here
class Person

    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(new_happiness)
        @happiness = new_happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(new_hygiene)
        @hygiene = new_hygiene
        new_hygiene + increment
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    # def check_happiness
    #     if  @happiness > 10 
    #         @happiness = 10
    #     elsif @happiness < 0
    #         @happiness = 0
    #     end 
    # end

    # def check_hygiene
    #     if @hygiene > 10 
    #         @hygiene = 10
    #     elsif @hygiene < 0
    #         @hygiene = 0
    #     end 
    # end

    def clean?
        if
            @hygiene > 7
            return true
        else
            return false 
        end
    end

    def happy?
        if 
            @happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        increment = 4
        hygiene=(new_hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness + 2
        @hygiene - 3
        check_hygiene
        check_happiness
        return "♪ another one bites the dust ♫"
    end

    def call_friend(name = "friend")
        self.happiness + 3
        name.happiness + 3
        check_happiness
        return "Hi #{name}! It's #{self}. How are you?"
    end

    def start_conversation(name, topic)
        if 
            topic == "politics"
            self.happiness - 1
            name.happiness - 1
            check_happiness
            return "blah blah partisan blah lobbyist"
        elsif
            topic == "weather"
            self.happiness + 1
            name.happiness + 1
            check_happiness
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end


end 