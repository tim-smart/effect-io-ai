# TPriorityQueue

A `TPriorityQueue` contains values of type `A` that an `Order` is defined
on. Unlike a `TQueue`, `take` returns the highest priority value (the value
that is first in the specified ordering) as opposed to the first value
offered to the queue. The ordering that elements with the same priority will
be taken from the queue is not guaranteed.

To import and use `TPriorityQueue` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from 'effect/TPriorityQueue'

// Can be accessed like this
TPriorityQueue.TPriorityQueue
```
