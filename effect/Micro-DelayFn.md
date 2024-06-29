# DelayFn

Represents a function that can be used to calculate the delay between
repeats.

The function takes the current attempt number and the elapsed time since
the first attempt, and returns the delay for the next attempt. If the
function returns `None`, the repetition will stop.

To import and use `DelayFn` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.DelayFn
```
