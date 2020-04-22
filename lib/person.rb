# your code goes here



class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    
    end 

    def happiness
        @happiness.clamp(0,10)
    end 

    def happy?
        if @happiness > 7
            return true
        else 
            return false 
        end 
    end 

    def hygiene
        @hygiene.clamp(0,10)
    end   

    def clean?
        if @hygiene > 7
            return true
        else 
            return false
        end 
    end
    
    # Each Person can
# get paid/receive payments
# take a bath
# call a friend
# start a conversation
# state if they are happy and/or clean

#max, min for happy and hygiene, not bank 

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        convo = "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person,topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end 
