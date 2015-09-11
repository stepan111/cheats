# To implement a for loop:
for file in *;
do 
    echo $file found;
done

# To implement a case command:
case "$1"
in
    0) echo "zero found";;
    1) echo "one found";;
    2) echo "two found";;
    3*) echo "something beginning with 3 found";;
esac

#Hide output of script
&>/dev/null

#Process substitution
echo test | tee >(cat) | cat
test
test

# Read examples
read VAR	#Read 1 line into var
read -n1 VAR 	#Read 1 character inteo VAR
