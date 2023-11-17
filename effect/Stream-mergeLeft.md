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
  <R2, E2, A2>(that: Stream<R2, E2, A2>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>): Stream<R | R2, E | E2, A>
}
```
