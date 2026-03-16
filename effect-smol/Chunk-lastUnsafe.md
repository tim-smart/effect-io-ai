Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.lastUnsafe

Returns the last element of this chunk.

It will throw an error if the chunk is empty.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4)
console.log(Chunk.lastUnsafe(chunk)) // 4

const singleElement = Chunk.make("hello")
console.log(Chunk.lastUnsafe(singleElement)) // "hello"

// Warning: This will throw for empty chunks
try {
  Chunk.lastUnsafe(Chunk.empty())
} catch (error) {
  console.log((error as Error).message) // "Index out of bounds"
}
```

**Signature**

```ts
declare const lastUnsafe: <A>(self: Chunk<A>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1474)

Since v2.0.0