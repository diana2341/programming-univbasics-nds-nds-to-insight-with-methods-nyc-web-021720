$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
total=0
m= director_data[:movies]
row = 0
while row < m.length 
  g= m[row][:worldwide_gross]
  row += 1
  total += g
end
total

end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def  directors_totals(nds)
result=[]
r=0
while r < nds.length 
  director= nds[r]
  result << [director[:name],gross_for_director(director)]
  r+=1
end
result.to_h
end
