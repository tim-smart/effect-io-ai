# repeatEffectChunk

Creates a stream from an effect producing chunks of `A` values which
repeats forever.

To import and use `repeatEffectChunk` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.repeatEffectChunk
```

**Signature**

```ts
export declare const repeatEffectChunk: <R, E, A>(effect: Effect.Effect<R, E, Chunk.Chunk<A>>) => Stream<R, E, A>
```
