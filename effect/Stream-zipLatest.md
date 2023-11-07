# zipLatest

Zips the two streams so that when a value is emitted by either of the two
streams, it is combined with the latest value from the other stream to
produce a result.

Note: tracking the latest value is done on a per-chunk basis. That means
that emitted elements that are not the last value in chunks will never be
used for zipping.

To import and use `zipLatest` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.zipLatest
```

**Signature**

```ts
export declare const zipLatest: {
  <R2, E2, A2>(that: Stream<R2, E2, A2>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, readonly [A, A2]>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>): Stream<R | R2, E | E2, readonly [A, A2]>
}
```
