# toReadonlyArray

Converts a `Chunk` into a `ReadonlyArray`. If the provided `Chunk` is
non-empty (`NonEmptyChunk`), the function will return a
`NonEmptyReadonlyArray`, ensuring the non-empty property is preserved.

To import and use `toReadonlyArray` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.toReadonlyArray
```

**Signature**

```ts
export declare const toReadonlyArray: <S extends Chunk<any>>(
  self: S
) => S extends NonEmptyChunk<any> ? RA.NonEmptyReadonlyArray<Chunk.Infer<S>> : ReadonlyArray<Chunk.Infer<S>>
```
