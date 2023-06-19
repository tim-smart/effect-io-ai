# repeatEffectChunk

Creates a stream from an effect producing chunks of `A` values which
repeats forever.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const repeatEffectChunk: <R, E, A>(effect: Effect.Effect<R, E, Chunk.Chunk<A>>) => Stream<R, E, A>
```
