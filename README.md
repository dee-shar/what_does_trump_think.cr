# what_does_trump_think.cr
Web-API for [whatdoestrumpthink.com](https://whatdoestrumpthink.com/) an API to get random Trump quotes, or to personalize a Trump quote about a subject of your choosing.

## Example
```cr
require "./what_does_trump_think"

what_does_trump_think = WhatDoesTrumpThink.new
random_quote = what_does_trump_think.get_random_quote()
puts random_quote
```
