# branchAfter

Returns a `Stream` that first collects `n` elements from the input `Stream`,
and then creates a new `Stream` using the specified function, and sends all
the following elements through that.

To import and use `branchAfter` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.branchAfter
```

**Signature**

```ts
export declare const branchAfter: {
  <A, A2, E2, R2>(
    n: number,
    f: (input: Chunk.Chunk<A>) => Stream<A2, E2, R2>
  ): <R, E>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>
  <A, E, R, R2, E2, A2>(
    self: Stream<A, E, R>,
    n: number,
    f: (input: Chunk.Chunk<A>) => Stream<A2, E2, R2>
  ): Stream<A2, E | E2, R | R2>
}
```
