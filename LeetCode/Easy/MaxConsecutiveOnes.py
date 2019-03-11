"""
Given a binary array, find the maximum number of consecutive 1s in this array.

Example 1:
Input: [1,1,0,1,1,1]
Output: 3
Explanation: The first two digits or the last three digits are consecutive 1s.
    The maximum number of consecutive 1s is 3.
Note:

The input array will only contain 0 and 1.
The length of input array is a positive integer and will not exceed 10,000
"""

def findMaxConsecutiveOnes(nums: 'List[int]') -> 'int':

    count, maxCount = 0,0

    for i in nums:

        if i == 1:
            count += 1
            maxCount = max(count,maxCount)
        else:
            count = 0
    
    return maxCount

test1 = [1,0,1,1,0,1]
test2 = [1]
test3 = [1,1,0,1,1,1]

if __name__ == "__main__":
    print(findMaxConsecutiveOnes(test1), f'\nShould equal 2')
    print(findMaxConsecutiveOnes(test2), f'\nShould equal 1')
    print(findMaxConsecutiveOnes(test3), f'\nShould equal 2')