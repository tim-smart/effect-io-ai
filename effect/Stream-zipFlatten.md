# zipFlatten

Zips this stream with another point-wise and emits tuples of elements from
both streams.

The new stream will end when one of the sides ends.

To import and use `zipFlatten` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipFlatten
```

**Signature**

```ts
export declare const zipFlatten: {
  <R2, E2, A2>(
    that: Stream<A2, E2, R2>
  ): <R, E, A extends readonly any[]>(self: Stream<A, E, R>) => Stream<[...A, A2], E2 | E, R2 | R>
  <R, E, A extends readonly any[], R2, E2, A2>(
    self: Stream<A, E, R>,
    that: Stream<A2, E2, R2>
  ): Stream<[...A, A2], E | E2, R | R2>
}
```
