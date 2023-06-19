# orElseIfEmptyChunk

Produces the specified chunk if this stream is empty.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const orElseIfEmptyChunk: {
  <A2>(chunk: LazyArg<Chunk.Chunk<A2>>): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A2 | A>
  <R, E, A, A2>(self: Stream<R, E, A>, chunk: LazyArg<Chunk.Chunk<A2>>): Stream<R, E, A | A2>
}
```
