'''
Given two strings, write a method to decide if one is a permutation of the other
'''

def checkPermutation1(s1, s2):
    d = {}
    for char in s1:
        if char in d:
            d[char] += 1
        else:
            d[char] = 1
    for char in s2:
        if char in d:
            d[char] -= 1
    return sum(d.values()) == 0

def checkPermutation2(s1, s2):
    return sorted(s1) == sorted(s2)

if __name__ == '__main__':
    print(checkPermutation('hello', 'helo'))
    print(checkPermutation('hello', 'lelho'))
