# #1
cat | uniq

# #2
cat | uniq -c | cut -b7-

# #3
cat | uniq -ic | cut -b7-

# #4
uniq -u
