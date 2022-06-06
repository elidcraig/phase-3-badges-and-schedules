def badge_maker name='<Your Name>'
  "Hello, my name is #{name}."
end

def batch_badge_creator speaker_names
  speaker_names.map { |name| badge_maker name}
end  

def assign_rooms speaker_names
  assignments = []
  speaker_names.each_with_index do |name, index|
    assignments.push("Hello, #{name}! You'll be assigned to room #{index + 1}!")
  end 
  assignments
end   

def printer attendees
  attendees.each { |name| puts badge_maker(name) }
  assign_rooms(attendees).each {|message| puts message}
end  