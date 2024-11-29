# unfoldChunkEffect

Creates a stream by effectfully peeling off the "layers" of a value of type
`S`.

To import and use `unfoldChunkEffect` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.unfoldChunkEffect
undefined

**Signature**

```ts
export declare const unfoldChunkEffect: <S, A, E, R>(
  s: S,
  f: (s: S) => Effect.Effect<Option.Option<readonly [Chunk.Chunk<A>, S]>, E, R>
) => Stream<A, E, R>
```
