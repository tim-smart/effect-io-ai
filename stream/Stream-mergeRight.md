# mergeRight

Merges this stream and the specified stream together, discarding the values
from the left stream.

To import and use `mergeRight` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mergeRight
```

**Signature**

```ts
export declare const mergeRight: {
  <R2, E2, A2>(that: Stream<R2, E2, A2>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>): Stream<R | R2, E | E2, A2>
}
```
