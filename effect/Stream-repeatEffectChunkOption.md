Package: `effect`<br />
Module: `Stream`<br />

## Stream.repeatEffectChunkOption

Creates a stream from an effect producing chunks of `A` values until it
fails with `None`.

**Signature**

```ts
declare const repeatEffectChunkOption: <A, E, R>(effect: Effect.Effect<Chunk.Chunk<A>, Option.Option<E>, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3911)

Since v2.0.0