#!/bin/awk -f

BEGIN{
    OFS=" | "
    print "Name | Roll No"
}

{
    name[NR]=$2
    roll[NR]=$1
}

END{
    n = asorti(roll, sorted, "@val_num_desc")
    for(i=1; i<=n; i++){
        print roll[sorted[i]] OFS name[sorted[i]]
    }
}