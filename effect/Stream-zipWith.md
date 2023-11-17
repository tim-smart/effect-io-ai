# zipWith

Zips this stream with another point-wise and applies the function to the
paired elements.

The new stream will end when one of the sides ends.

To import and use `zipWith` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipWith
```

**Signature**

```ts
export declare const zipWith: {
  <R2, E2, A2, A, A3>(
    that: Stream<R2, E2, A2>,
    f: (a: A, a2: A2) => A3
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A3>
  <R, E, R2, E2, A2, A, A3>(
    self: Stream<R, E, A>,
    that: Stream<R2, E2, A2>,
    f: (a: A, a2: A2) => A3
  ): Stream<R | R2, E | E2, A3>
}
```
