Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.toReadonlyArray

Converts a `Chunk` into a `ReadonlyArray`. If the provided `Chunk` is
non-empty (`NonEmptyChunk`), the function will return a
`NonEmptyReadonlyArray`, ensuring the non-empty property is preserved.

**Signature**

```ts
declare const toReadonlyArray: <S extends Chunk<any>>(self: S) => S extends NonEmptyChunk<any> ? RA.NonEmptyReadonlyArray<Chunk.Infer<S>> : ReadonlyArray<Chunk.Infer<S>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L326)

Since v2.0.0