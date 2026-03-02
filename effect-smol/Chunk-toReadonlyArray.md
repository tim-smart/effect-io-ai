Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.toReadonlyArray

Converts a `Chunk` into a `ReadonlyArray`. If the provided `Chunk` is
non-empty (`NonEmptyChunk`), the function will return a
`NonEmptyReadonlyArray`, ensuring the non-empty property is preserved.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3)
const readonlyArray = Chunk.toReadonlyArray(chunk)
console.log(readonlyArray) // [1, 2, 3]

// The result is read-only, modifications would cause TypeScript errors
// readonlyArray[0] = 10 // TypeScript error

// With empty chunk
const emptyChunk = Chunk.empty<number>()
console.log(Chunk.toReadonlyArray(emptyChunk)) // []
```

**Signature**

```ts
declare const toReadonlyArray: <S extends Chunk<any>>(self: S) => S extends NonEmptyChunk<any> ? RA.NonEmptyReadonlyArray<Chunk.Infer<S>> : ReadonlyArray<Chunk.Infer<S>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L514)

Since v2.0.0