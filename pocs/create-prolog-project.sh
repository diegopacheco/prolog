echo "hello_world :- write('Hello, World!'), nl.

main :-
    hello_world." > main.pl

echo "#!/bin/bash

swipl -s main.pl -g main -t halt" > run.sh
chmod +x run.sh

touch README.md
echo "### Build & Run

\`\`\`bash
./run.sh
\`\`\` "> README.md