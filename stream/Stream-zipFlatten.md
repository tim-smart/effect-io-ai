# zipFlatten

Zips this stream with another point-wise and emits tuples of elements from
both streams.

The new stream will end when one of the sides ends.

To import and use `zipFlatten` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.zipFlatten
```

**Signature**

```ts
export declare const zipFlatten: {
  <R2, E2, A2>(that: Stream<R2, E2, A2>): <R, E, A extends readonly any[]>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, readonly [...A, A2]>
  <R, E, A extends readonly any[], R2, E2, A2>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>): Stream<
    R | R2,
    E | E2,
    readonly [...A, A2]
  >
}
```
