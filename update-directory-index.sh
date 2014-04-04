#!/bin/bash
 
for DIR in $(find maven ivy  -type d  \( ! -regex '.*/\..*' \) ); do
  echo -e "Creating directory listing index.html for "$DIR
  (
    echo -e "<html>\n<body>\n<h1>Directory listing</h1>\n<hr/>\n<pre>"
    ls -1pa "${DIR}" |\
      sort |\
      grep -v "^\./$" |\
      grep -v "^\..*/$" |\
      grep -v "^index\.html$"|\
      awk '{ printf "<a href=\"%s\">%s</a>\n",$1,$1 }'
    echo -e "</pre>\n</body>\n</html>"
  ) > "${DIR}/index.html"
done
