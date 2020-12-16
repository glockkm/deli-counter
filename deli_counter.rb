def line(deli)
    if deli.empty? # asking if deli array is empty
        puts "The line is currently empty." # if is empty put/print to screen this
    else
        queue = "The line is currently:" # set up variable = first part of output that will have multiple elements added to it
        deli.each.with_index(1) do |name, i| # start at 1 for naming indexes as makes sense here. name and i (index) block variables
            queue << " #{i}. #{name}" # shovel into queue variable index and name in format that test requires (space and period)
        end
        puts queue # print queue variable to screen
    end
end


def take_a_number(deli, person) # set up two arguments
    if deli.empty?
        deli.push(person) # add person (from method argument) to deli array 
        puts "Welcome, #{person}. You are number 1 in line." # print out first person in line string
    else # for all others
        deli.push(person) # add person to deli array
        puts "Welcome, #{person}. You are number #{deli.length} in line." # print out their name and index/length of deli array
    end
end

def now_serving(deli)
    if deli.empty?
        puts "There is nobody waiting to be served!" # if deli is empty print this
    else # for all others dp the below code
        person = deli.shift # set a variable person up to whom deli.shift removes from the deli array using shift method
        puts "Currently serving #{person}." # prints out that person and string
    end
end
