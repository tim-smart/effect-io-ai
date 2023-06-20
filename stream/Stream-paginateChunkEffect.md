# paginateChunkEffect

Like `Stream.unfoldChunkEffect`, but allows the emission of values to end one step
further than the unfolding of the state. This is useful for embedding
paginated APIs, hence the name.

To import and use `paginateChunkEffect` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.paginateChunkEffect
```

**Signature**

```ts
export declare const paginateChunkEffect: <S, R, E, A>(
  s: S,
  f: (s: S) => Effect.Effect<R, E, readonly [Chunk.Chunk<A>, Option.Option<S>]>
) => Stream<R, E, A>
```
