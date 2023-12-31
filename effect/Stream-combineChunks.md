# combineChunks

Combines the chunks from this stream and the specified stream by repeatedly
applying the function `f` to extract a chunk using both sides and
conceptually "offer" it to the destination stream. `f` can maintain some
internal state to control the combining process, with the initial state
being specified by `s`.

To import and use `combineChunks` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.combineChunks
```

**Signature**

```ts
export declare const combineChunks: {
  <R2, E2, A2, S, R3, E, A, R4, R5, A3>(
    that: Stream<R2, E2, A2>,
    s: S,
    f: (
      s: S,
      pullLeft: Effect.Effect<R3, Option.Option<E>, Chunk.Chunk<A>>,
      pullRight: Effect.Effect<R4, Option.Option<E2>, Chunk.Chunk<A2>>
    ) => Effect.Effect<R5, never, Exit.Exit<Option.Option<E2 | E>, readonly [Chunk.Chunk<A3>, S]>>
  ): <R>(self: Stream<R, E, A>) => Stream<R2 | R3 | R4 | R5 | R, E2 | E, A3>
  <R, R2, E2, A2, S, R3, E, A, R4, R5, A3>(
    self: Stream<R, E, A>,
    that: Stream<R2, E2, A2>,
    s: S,
    f: (
      s: S,
      pullLeft: Effect.Effect<R3, Option.Option<E>, Chunk.Chunk<A>>,
      pullRight: Effect.Effect<R4, Option.Option<E2>, Chunk.Chunk<A2>>
    ) => Effect.Effect<R5, never, Exit.Exit<Option.Option<E2 | E>, readonly [Chunk.Chunk<A3>, S]>>
  ): Stream<R | R2 | R3 | R4 | R5, E2 | E, A3>
}
```
