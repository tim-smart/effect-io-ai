# toArray

Converts a `Chunk` into an `Array`. If the provided `Chunk` is non-empty
(`NonEmptyChunk`), the function will return a `NonEmptyArray`, ensuring the
non-empty property is preserved.

To import and use `toArray` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.toArray
```

**Signature**

```ts
export declare const toArray: <S extends Chunk<any>>(
  self: S
) => S extends NonEmptyChunk<any> ? RA.NonEmptyArray<Chunk.Infer<S>> : Array<Chunk.Infer<S>>
```
