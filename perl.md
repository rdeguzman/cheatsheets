---
layout: default
---
Perl CheatSheet
---
## Search and Replace

To replace characters within a file using perl

	perl -e 's/search/replace/g' -p -i some_dir/*.sh

Replace from bash env variable

	perl -p -i -e 's/\$\{([^}]+)\}/defined $ENV{$1} ? $ENV{$1} : $&/eg' /styles/print-streets-light.json
