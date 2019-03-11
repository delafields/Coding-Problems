# #1
sed 's/ the / this /1'

# #2
sed 's/\bthy\b/your/ig'

# #3
sed 's/thy/{&}/ig'

# #4
sed 's/[0-9]\+ /**** /g'

# #5
sed -r 's/([0-9]+ )([0-9]+ )([0-9]+ )(....)/\4 \3\2\1/'
