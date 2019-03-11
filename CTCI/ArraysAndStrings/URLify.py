'''
Write a method to replace all spaces in a string with '%20'.
You may assume that the string has sufficient space at the end to hold the additonal characters
and that you are given the "true" length of the string.
'''
import re
def urlify(s, k):
    return re.sub(' ', '%20%', s.strip())

# without re
def urlify2(s, k):
  s = list(s)
  for i in range(0, k):
      if s[i] == ' ':
        s[i] = '%20%'
  return ''.join(s).strip()


if __name__ == '__main__':
    print(urlify('Mr John Smith    ', 13))
    print(urlify2('Mr John Smith    ', 13))
