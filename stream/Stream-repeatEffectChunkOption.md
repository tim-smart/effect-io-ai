# repeatEffectChunkOption

Creates a stream from an effect producing chunks of `A` values until it
fails with `None`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const repeatEffectChunkOption: <R, E, A>(
  effect: Effect.Effect<R, Option.Option<E>, Chunk.Chunk<A>>
) => Stream<R, E, A>
```
