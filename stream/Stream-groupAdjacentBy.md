# groupAdjacentBy

Creates a pipeline that groups on adjacent keys, calculated by the
specified function.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const groupAdjacentBy: {
  <A, K>(f: (a: A) => K): <R, E>(self: Stream<R, E, A>) => Stream<R, E, readonly [K, Chunk.NonEmptyChunk<A>]>
  <R, E, A, K>(self: Stream<R, E, A>, f: (a: A) => K): Stream<R, E, readonly [K, Chunk.NonEmptyChunk<A>]>
}
```
