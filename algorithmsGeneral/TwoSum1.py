def twoSum(nums, target):
    """
    :type nums: List[int]
    :type target: int
    :rtype: List[int]
    """
    d = {} #dict. note that     same element can't be used twice; care about first iteration?
    for i, n in enumerate(nums):
        m = target - n
        if m in d: #check against kept dict
            return [d[m], i]
        else:
            d[n] = i

print(twoSum([2, 7, 11, 15], 9)) #example given
