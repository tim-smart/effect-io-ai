# Take

A `Take<E, A>` represents a single `take` from a queue modeling a stream of
values. A `Take` may be a failure cause `Cause<E>`, a chunk value `Chunk<A>`,
or an end-of-stream marker.

To import and use `Take` from the "Take" module:

```ts
import * as Take from "effect/Take"
// Can be accessed like this
Take.Take
```
