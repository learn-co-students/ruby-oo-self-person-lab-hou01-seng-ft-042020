# your code goes he

class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        
    end

    def happiness=(num)
        if num > 10 
          num = 10
        elsif num < 0
            num = 0
        end

         @happiness = num
    end

    def hygiene=(num)
        if num > 10 
          num = 10
        elsif num < 0
            num = 0
        end
        
        @hygiene = num
    end

    def happy?
        if happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        @hygiene += 4 
        self.hygiene=(@hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        self.hygiene=(@hygiene)
        @happiness += 2
        self.happiness=(@happiness)
        return "♪ another one bites the dust ♫"

    end

    def call_friend(friend)
        @happiness += 3
        self.happiness=(@happiness)
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            @happiness -= 2
            self.happiness=(@happiness)
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            @happiness += 1
            self.happiness=(@happiness)
            friend.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end

    
end
