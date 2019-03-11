# Read in an Array
arr=($(cat))
echo ${arr[@]}

# Slice an Array
arr=($(cat))
echo ${arr[@]:3:5}
