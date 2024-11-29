# repeatEffectChunkOption

Creates a stream from an effect producing chunks of `A` values until it
fails with `None`.

To import and use `repeatEffectChunkOption` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.repeatEffectChunkOption
undefined

**Signature**

```ts
export declare const repeatEffectChunkOption: <A, E, R>(
  effect: Effect.Effect<Chunk.Chunk<A>, Option.Option<E>, R>
) => Stream<A, E, R>
```
