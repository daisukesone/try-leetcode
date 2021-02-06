#
# @lc app=leetcode id=7 lang=ruby
#
# [7] Reverse Integer
#

# @lc code=start
# @param {Integer} x
# @return {Integer}
def reverse(x)
    answer = x.to_s.reverse.to_i

    if answer > 2**31 - 1
        return 0
    elsif answer < -2**31
        return 0
    elsif x > 0
        return answer
    else
        return answer * -1
    end
end
# @lc code=end

