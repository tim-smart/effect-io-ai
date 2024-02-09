# mergeLeft

Merges this stream and the specified stream together, discarding the values
from the right stream.

To import and use `mergeLeft` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mergeLeft
```

**Signature**

```ts
export declare const mergeLeft: {
  <R2, E2, A2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>
  <R, E, A, R2, E2, A2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<A, E | E2, R | R2>
}
```
