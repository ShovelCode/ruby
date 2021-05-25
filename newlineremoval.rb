
"Remove \n".delete('\n') # => "Remove \n" # doesn't match
'Remove \n'.delete('\n') # => "Remove \\" # see below
 
'Remove \n'.delete("\n") # => "Remove \\n" # no newline in source string
"Remove \n".delete("\n") # => "Remove " # properly removed
