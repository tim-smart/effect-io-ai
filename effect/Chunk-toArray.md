Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.toArray

Converts a `Chunk` into an `Array`. If the provided `Chunk` is non-empty
(`NonEmptyChunk`), the function will return a `NonEmptyArray`, ensuring the
non-empty property is preserved.

**Signature**

```ts
declare const toArray: <S extends Chunk<any>>(self: S) => S extends NonEmptyChunk<any> ? RA.NonEmptyArray<Chunk.Infer<S>> : Array<Chunk.Infer<S>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L291)

Since v2.0.0