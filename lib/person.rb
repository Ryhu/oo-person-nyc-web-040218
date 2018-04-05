class Person  attr_reader :name, :hygiene, :happiness

 attr_writer
 attr_accessor :bank_account  
 
 
 def initialize(name)
   @name = name
   @bank_account = 25
   @hygiene = 8
   @happiness = 8
 end  
 
 def hygiene=(input)
   
   if input > 10
     @hygiene = 10
   elsif input < 0
     @hygiene = 0
   else
     @hygiene = input
   end
   
 end  
 
 def happiness=(input)
   
   if input > 10
     @happiness = 10
   elsif input < 0
     @happiness = 0
   else
     @happiness = input
   end
   
 end  
 
 def clean?
   
   if @hygiene > 7
     true
   else
     false
   end

 end  
 
 def counter(op, value, change)    
   if op == “+”
     value += change
     if value > 10
       value = 10
     end
     return value
   elsif op == “-”
     value -= change
     if value < 0
       value = 0
     end
     return value
   end  
end  
   
def happy?
   if @happiness > 7
     true
   else
     false
   end
 end 
 
 
 def get_paid(salary)
   @bank_account += salary
   return "all about the benjamins"
 end  
 
 def take_bath()
   self.hygiene=(@hygiene + 4)
   return "♪ Rub-a-dub just relaxing in the tub ♫"
 end  
 
 def work_out
   self.happiness=(@happiness+2)
   self.hygiene=(@hygiene-3 )
   return "♪ another one bites the dust ♫"
 end  
 
 def call_friend(another_person)
   self.happiness=(@happiness+3)
   another_person.happiness=(another_person.happiness + 3)
   return "Hi #{another_person.name}! It's #{self.name}. How are you?"
 end  
 
 def start_conversation(another_person, topic)
  if topic == "politics"
   self.happiness=(@happiness-2)
   another_person.happiness=(another_person.happiness - 2)
   return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness=(@happiness+1)
    another_person.happiness=(another_person.happiness + 1)
    return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
  end
   
 end
 
 end