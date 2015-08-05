
#!/bin/sh

dos2unix "$1"
sed 's/　/  /g' "$1" | sed 's/\s\+$//g' | sed -z 's/\n\n/\\n\\n/g' | sed -z 's/\n /\\n /g' | sed -z 's/\n//g' | sed 's/\\n/\n/g' > "$1.mod"
mv "$1.mod" "$1"
vim "$1"

