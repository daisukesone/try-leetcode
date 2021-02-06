#
# @lc app=leetcode id=13 lang=ruby
#
# [13] Roman to Integer
#

# @lc code=start
# @param {String} s
# @return {Integer}
def roman_to_int(s)
  hash = {
	'I' =>    1,
	'V' =>    5,
	'X' =>    10,
	'L' =>     50,
	'C' =>     100,
	'D' =>     500,
	'M' =>     1000 
	}
  total = 0
  prev = s[0]

  s.each_char do |char|
        if hash[char] > hash[prev]
            total -= hash[prev]
            total += (hash[char] - hash[prev])
        else
            total += hash[char]
        end
        prev = char
    end
	
    return total
end
# @lc code=end

