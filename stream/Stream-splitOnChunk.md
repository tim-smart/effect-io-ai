# splitOnChunk

Splits elements on a delimiter and transforms the splits into desired output.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const splitOnChunk: {
  <A>(delimiter: Chunk.Chunk<A>): <R, E>(self: Stream<R, E, A>) => Stream<R, E, Chunk.Chunk<A>>
  <R, E, A>(self: Stream<R, E, A>, delimiter: Chunk.Chunk<A>): Stream<R, E, Chunk.Chunk<A>>
}
```
