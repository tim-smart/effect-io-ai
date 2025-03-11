## unfoldChunkEffect

Creates a stream by effectfully peeling off the "layers" of a value of type
`S`.

**Signature**

```ts
declare const unfoldChunkEffect: <S, A, E, R>(s: S, f: (s: S) => Effect.Effect<Option.Option<readonly [Chunk.Chunk<A>, S]>, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5382)

Since v2.0.0