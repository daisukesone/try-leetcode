#
# @lc app=leetcode id=9 lang=ruby
#
# [9] Palindrome Number
#

# @lc code=start
# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    y = x.to_s.reverse

    if x.to_s == y
      return true
    else
      return false
    end

end
# @lc code=end

