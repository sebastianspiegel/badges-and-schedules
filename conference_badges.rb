# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    badges = []
    attendees.collect do |name|
        badges << "Hello, my name is #{name}."
    end
    badges 
end

def assign_rooms(attendees)
    room_assignments = []
    room = 1
    attendees.collect do |name|
        room_assignments << "Hello, #{name}! You'll be assigned to room #{room}!"
        room += 1
    end
    room_assignments
end

def printer(attendees)
    badges = batch_badge_creator(attendees)
    n = 0
    attendees.collect do |name|
        puts badges[n]
        n += 1
    end
    room_assignments = assign_rooms(attendees)
    m = 0
    attendees.collect do |name|
        puts room_assignments[m]
        m += 1
    end
end
