# repeatEffectChunk

Creates a stream from an effect producing chunks of `A` values which
repeats forever.

To import and use `repeatEffectChunk` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.repeatEffectChunk
undefined

**Signature**

```ts
export declare const repeatEffectChunk: <A, E, R>(effect: Effect.Effect<Chunk.Chunk<A>, E, R>) => Stream<A, E, R>
```
