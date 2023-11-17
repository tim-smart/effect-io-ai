# repeatEffectChunkOption

Creates a stream from an effect producing chunks of `A` values until it
fails with `None`.

To import and use `repeatEffectChunkOption` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.repeatEffectChunkOption
```

**Signature**

```ts
export declare const repeatEffectChunkOption: <R, E, A>(
  effect: Effect.Effect<R, Option.Option<E>, Chunk.Chunk<A>>
) => Stream<R, E, A>
```
