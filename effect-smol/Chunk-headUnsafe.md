Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.headUnsafe

Returns the first element of this chunk.

It will throw an error if the chunk is empty.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4)
console.log(Chunk.headUnsafe(chunk)) // 1

const singleElement = Chunk.make("hello")
console.log(Chunk.headUnsafe(singleElement)) // "hello"

// Warning: This will throw for empty chunks
try {
  Chunk.headUnsafe(Chunk.empty())
} catch (error) {
  console.log((error as Error).message) // "Index out of bounds"
}
```

**Signature**

```ts
declare const headUnsafe: <A>(self: Chunk<A>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1408)

Since v2.0.0