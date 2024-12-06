# Shell Script Whitespace Handling Bug

This repository demonstrates a common yet subtle bug in shell scripts that involves the incorrect handling of whitespace when reading a file line by line. The `while IFS= read -r line` loop, while commonly used, doesn't automatically trim whitespace. This can lead to unexpected behavior if the lines in your input file contain leading or trailing spaces or tabs.

The `bug.sh` file contains the buggy script, while `bugSolution.sh` provides a corrected version.