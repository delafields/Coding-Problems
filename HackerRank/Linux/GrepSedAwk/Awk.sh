# #1
awk '{if (length($4)==0) print "Not all scores are available for " $1}'

# #2
awk '{print $1,":", ($2<50||$3<50||$4<50) ? "Fail" : "Pass"}'

# #3
awk '{
    avg = ( $2 + $3 + $4 ) / 3
    if ( avg >= 80 )
        grade = "A"
    else if ( avg >= 60 )
        grade = "B"
    else if ( avg >= 50 )
        grade = "C"
    else
        grade = "FAIL"
    print $0, ":", grade
}'

# #4
awk '{
    if ( NR % 2 == 1 )
        printf "%s;", $0
    else
        printf "%s\n", $0
}'
