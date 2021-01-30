#
# @lc app=leetcode id=1 lang=ruby
#
# [1] Two Sum
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

## brute force
def two_sum(nums, target)
  (0..nums.length-1).each do |i|
    (i+1..nums.length-1).each do |j|
      return [i, j] if nums[i] + nums[j] == target
    end
  end
end


## Two-pass Hash Table
def two_sum(nums, target)
  hash = {}
  (0..nums.length-1).each do |i|
    hash.store(nums[i], i) #ハッシュを初期化
  end
  (0..nums.length-1).each do |i|
    complement = target - nums[i] #補数を用意
    return [i, hash.fetch(complement)] if hash.has_key?(complement) && hash.fetch(complement) != i #補数チェック
  end
end


##  One-pass Hash Table

def two_sum(nums, target)
  hash = {}
  (0..nums.length-1).each do |i|
    complement = target - nums[i]
    return [hash.fetch(complement), i] if hash.has_key?(complement) #補数チェック
    hash.store(nums[i], i) #補数が存在しなかったため追加
end

# @lc code=end

