Package: `effect`<br />
Module: `Stream`<br />

## Stream.combineChunks

Combines the chunks from this stream and the specified stream by repeatedly
applying the function `f` to extract a chunk using both sides and
conceptually "offer" it to the destination stream. `f` can maintain some
internal state to control the combining process, with the initial state
being specified by `s`.

**Signature**

```ts
declare const combineChunks: { <A2, E2, R2, S, R3, E, A, R4, R5, A3>(that: Stream<A2, E2, R2>, s: S, f: (s: S, pullLeft: Effect.Effect<Chunk.Chunk<A>, Option.Option<E>, R3>, pullRight: Effect.Effect<Chunk.Chunk<A2>, Option.Option<E2>, R4>) => Effect.Effect<Exit.Exit<readonly [Chunk.Chunk<A3>, S], Option.Option<E2 | E>>, never, R5>): <R>(self: Stream<A, E, R>) => Stream<A3, E2 | E, R2 | R3 | R4 | R5 | R>; <R, A2, E2, R2, S, R3, E, A, R4, R5, A3>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>, s: S, f: (s: S, pullLeft: Effect.Effect<Chunk.Chunk<A>, Option.Option<E>, R3>, pullRight: Effect.Effect<Chunk.Chunk<A2>, Option.Option<E2>, R4>) => Effect.Effect<Exit.Exit<readonly [Chunk.Chunk<A3>, S], Option.Option<E2 | E>>, never, R5>): Stream<A3, E2 | E, R | R2 | R3 | R4 | R5>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1022)

Since v2.0.0