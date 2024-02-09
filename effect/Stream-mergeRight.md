# mergeRight

Merges this stream and the specified stream together, discarding the values
from the left stream.

To import and use `mergeRight` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mergeRight
```

**Signature**

```ts
export declare const mergeRight: {
  <R2, E2, A2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>
  <R, E, A, R2, E2, A2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<A2, E | E2, R | R2>
}
```
