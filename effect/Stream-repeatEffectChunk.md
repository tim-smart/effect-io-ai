Package: `effect`<br />
Module: `Stream`<br />

## Stream.repeatEffectChunk

Creates a stream from an effect producing chunks of `A` values which
repeats forever.

**Signature**

```ts
declare const repeatEffectChunk: <A, E, R>(effect: Effect.Effect<Chunk.Chunk<A>, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3913)

Since v2.0.0