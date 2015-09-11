# sum integers from a file or stdin, one integer per line:
printf '1\n2\n3\n' | awk '{ sum += $1} END {print sum}'

# Search from file 4 days ago
awk -v days="-4" '$4 ~ strftime("%e/%b/%Y",systime()+(days*86400)){print $1 }' httpd/access_log httpd/access_log

#Comparision example 
BEGIN {                                                                                                                      
        count =0;                                                                                                            
        while (( getline line  <  from_file ) > 0 )

        {
                array[++count]=line;
        }
        close (from_file);
}                                                                                                                            
{                                                                                                                            
                for ( id  in array){
                        if ($1 == array[id] )
                        print $1":ADD" ;
                }

}

