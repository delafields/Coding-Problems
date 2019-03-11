'''
Implement an algorithm to determine if a string has all unique characters.
What if you cannot use additional data structures?
'''

# with additional data structures
def isUnique1(s):
    return len(s) == len(set(s))

# without
def isUnique2(s):
    s = sorted(s)
    for i in range(0, len(s)-1):
        if s[i] == s[i+1]:
            return False
    return True

if __name__ == '__main__':
    print(isUnique2('hello'))
    print(isUnique2('helo'))
