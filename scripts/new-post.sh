
#!/bin/bash

echo "Adding new post...\n"

function join_by { local IFS="$1"; shift; echo "$*"; }

TODAY=`date +%Y-%m-%d`

# get details about post
read -p "author name: " title
title=${title:-First Last}
lowercasetitle=`echo "$title" | awk '{print tolower($0)}'`
slug=`join_by - $lowercasetitle`
read -p "name of book: " work
work=${work:-Book Title}
read -p "genres: " genre
genre=${genre:-Genre}

echo "---
title: \"${title}\"
genre: \"${genre}\"
slug: \"${slug}\"
work: \"${work}\"
date: \"${TODAY}\"
---

![${title}](/interview-photos/${slug}.jpg)

## ${title}

### Who are you, and what did you write?

TBD

### What hardware and software do you write with?

TBD

### When and where do you write?

TBD

### What's your dream writing setup?

TBD

" >> pages/interviews/${slug}.md

echo "\nPage created! Starting dev server...\n"
make dev

