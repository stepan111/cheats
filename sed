# To replace all occurrences of "day" with "night" and write to stdout:
sed 's/day/night/g' file.txt

# To replace all occurrences of "day" with "night" within file.txt:
sed -i 's/day/night/g' file.txt

# To replace all occurrences of "day" with "night" on stdin:
echo 'It is daytime' | sed 's/day/night/g'

# To remove leading spaces
sed -i -r 's/^\s+//g' file.txt

# Remove empty lines and print results to stdout:
sed '/^$/d' file.txt

# Add '#' at begining of lines that match PATTERN
sed -i -e '/PATTERN/s/^/#/' file.txt

# List text between patterns(if last pattern will not match it will write to end)
sed -n '/25-Mar-2015 23:37:15/,/26-Mar-2015-00:06/p' /var/log/bind/named.log

