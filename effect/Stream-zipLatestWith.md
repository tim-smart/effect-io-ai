# zipLatestWith

Zips the two streams so that when a value is emitted by either of the two
streams, it is combined with the latest value from the other stream to
produce a result.

Note: tracking the latest value is done on a per-chunk basis. That means
that emitted elements that are not the last value in chunks will never be
used for zipping.

To import and use `zipLatestWith` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipLatestWith
```

**Signature**

```ts
export declare const zipLatestWith: {
  <A2, E2, R2, A, A3>(
    that: Stream<A2, E2, R2>,
    f: (a: A, a2: A2) => A3
  ): <E, R>(self: Stream<A, E, R>) => Stream<A3, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2, A3>(
    self: Stream<A, E, R>,
    that: Stream<A2, E2, R2>,
    f: (a: A, a2: A2) => A3
  ): Stream<A3, E | E2, R | R2>
}
```
