# branchAfter

Returns a `Stream` that first collects `n` elements from the input `Stream`,
and then creates a new `Stream` using the specified function, and sends all
the following elements through that.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const branchAfter: {
  <A, R2, E2, A2>(n: number, f: (input: Chunk.Chunk<A>) => Stream<R2, E2, A2>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, n: number, f: (input: Chunk.Chunk<A>) => Stream<R2, E2, A2>): Stream<
    R | R2,
    E | E2,
    A2
  >
}
```
