require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nil
  
  # start outside loop 
  
  outside_counter = 0
  while outside_counter < nds.length do 
      total = 0
      total = gross_for_director(nds[:outside_counter][:name])
      result.store(nds[outside_counter][:name],total)
      outside_counter+=1
  end
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input




def gross_for_director(director_data)
  result = {}
  nil
  
  counter = 0 
  total = 0 
  while counter < director_data[:movies].length do 
    total += director_data[:movies][counter][:worldwide_gross]
    counter +=1 
  end
  # result.store(director_data[:name],total)
  # pp  result  
  return total 
  # pp director_data[:movies][0][:worldwide_gross]
end
