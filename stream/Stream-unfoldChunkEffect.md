# unfoldChunkEffect

Creates a stream by effectfully peeling off the "layers" of a value of type
`S`.

To import and use `unfoldChunkEffect` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.unfoldChunkEffect
```

**Signature**

```ts
export declare const unfoldChunkEffect: <R, E, A, S>(
  s: S,
  f: (s: S) => Effect.Effect<R, E, Option.Option<readonly [Chunk.Chunk<A>, S]>>
) => Stream<R, E, A>
```
