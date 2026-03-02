Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.toArray

Converts a `Chunk` into an `Array`. If the provided `Chunk` is non-empty
(`NonEmptyChunk`), the function will return a `NonEmptyArray`, ensuring the
non-empty property is preserved.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3)
const array = Chunk.toArray(chunk)
console.log(array) // [1, 2, 3]
console.log(Array.isArray(array)) // true

// With empty chunk
const emptyChunk = Chunk.empty<number>()
console.log(Chunk.toArray(emptyChunk)) // []
```

**Signature**

```ts
declare const toArray: <S extends Chunk<any>>(self: S) => S extends NonEmptyChunk<any> ? RA.NonEmptyArray<Chunk.Infer<S>> : Array<Chunk.Infer<S>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L463)

Since v2.0.0