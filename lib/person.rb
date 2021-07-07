# your code goes here
class Person
    
    attr_reader  :name 
    attr_accessor  :bank_account

    def initialize(n)
        
        @name = n
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

         

    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if self.hygiene > 7
            return true
        else
            return false
        end
    end

    def happiness=(m)
        if m > 10
            @happiness = 10
        elsif m < 0 
            @happiness = 0 
        else
            @happiness = m
        end
    end

    def happiness
        # 
        @happiness
    end

    def hygiene=(m)
        if m > 10
            @hygiene = 10
        elsif m < 0 
            @hygiene = 0 
        else
            @hygiene = m
        end

    end

    def hygiene
        @hygiene
    end

    def get_paid(sal)
        self.bank_account += sal
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(p,topic)
        if topic == "weather"
            p.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        elsif topic == "politics"
            p.happiness -= 2
            self.happiness -=2
            return "blah blah partisan blah lobbyist"
        else
            return "blah blah blah blah blah"
        end

    end

end