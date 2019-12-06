require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  # p nds[:movies]
  result = {}
  nil
  
  # start outside loop 
  
  counter = 0
  while counter < nds.length do 
      total = 0
      p 'blah blah blah'
      total = gross_for_director(nds[counter])
      p total 
      # result.store(nds[:name],total)
      counter+=1
  end
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input




def gross_for_director(director_data)
  # pp director_data
  result = {}
  nil
  
  counter = 0 
  total = 0 
  while counter < director_data[:movies].length do 
    total += director_data[:movies][counter][:worldwide_gross]
    counter +=1 
  end
  return total 
  
end
