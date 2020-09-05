[What is the difference between test, \[ and \[\[ ?](http://mywiki.wooledge.org/BashFAQ/031)

[2](https://stackoverflow.com/questions/3427872/whats-the-difference-between-and-in-bash/3427931#3427931)

|**Feature**|**new test** [[|**old test** [|**Example**|
|--|--|--|--|
|String comparison|<code>></code>|<code>\\></code>|<code>[[ a > b ]] \|\| echo "a does not come after b"</code>|
||<code><|<code>\\<</code>|<code>[[ az < za ]] && echo "az comes before za"</code>|
||<code>= (or ==)</code>|<code>=</code>|<code>[[ a = a ]] && echo "a equals a"</code>|
||<code>!=</code>|<code>!=</code>|<code>[[ a != b ]] && echo "a is not equal to b"</code>|
|Integer comparison|<code>-gt</code>|<code>-gt</code>|<code>[[ 5 -gt 10 ]] \|\| echo "5 is not bigger than 10"</code>|
||<code>-lt</code>|<code>-lt</code>|<code>[[ 8 -lt 9 ]] && echo "8 is less than 9"</code>|
||<code>-ge</code>|<code>-ge</code>|<code>[[ 3 -ge 3 ]] && echo "3 is greater than or equal to 3"</code>|
||<code>-le</code>|<code>-le</code>|<code>[[ 3 -le 8 ]] && echo "3 is less than or equal to 8"</code>|
||<code>-eq</code>|<code>-eq</code>|<code>[[ 5 -eq 05 ]] && echo "5 equals 05"</code>|
||<code>-ne</code>|<code>-ne</code>|<code>[[ 6 -ne 20 ]] && echo "6 is not equal to 20"</code>|
|Conditional evaluation|<code>&&</code>|<code>-a</code>|<code>[[ -n \$var && -f \$var ]] && echo "$var is a file"</code>|
||<code>\|\|</code>|<code>-o</code>|<code>[[ -b \$var \|\| -c \$var ]] && echo "\$var is a device"</code>|
|Expression grouping|<code>(...)</code>|<code>\\( ... \\)</code>|<code>[[ \$var = img* && (\$var = *.png \|\| \$var = *.jpg) ]] && echo "\$var starts with img and ends with .jpg or .png"</code>|
|Pattern matching|<code>= (or ==)</code>||<code>[[ \$name = a* ]] \|\| echo "name does not start with an 'a': \$name"</code>|
|Regular Expression matching|<code>=~</code>||<code>[[ \$(date) =~ ^Fri\\ ...\\ 13 ]] && echo "It's Friday the 13th!"</code>|


|**Description**|**Primitive**|**Example**|
|--|--|--|
|Entry \(file or directory\) exists|<code>-e</code>|<code>[[ -e $config ]] && echo "config file exists: $config"</code>|
|File is newer/older than other file|<code>-nt / -ot</code>|<code>[[ $file0 -nt $file1 ]] && echo "$file0 is newer than $file1"<code>|
|Two files are the same|<code>-ef</code>|<code>[[ $input -ef $output ]] && { echo "will not overwrite input file: $input"; exit 1; }</code>|
|Negation|<code>!</code>|<code>[[ ! -u $file ]] && echo "$file is not a setuid file"</code>|
