# mergeHaltRight

Merges this stream and the specified stream together. New produced stream
will terminate when the specified stream terminates.

To import and use `mergeHaltRight` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mergeHaltRight
```

**Signature**

```ts
export declare const mergeHaltRight: {
  <R2, E2, A2>(that: Stream<R2, E2, A2>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2 | A>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>): Stream<R | R2, E | E2, A | A2>
}
```