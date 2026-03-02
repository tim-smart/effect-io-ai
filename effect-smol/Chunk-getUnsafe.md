Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.getUnsafe

Gets an element unsafely, will throw on out of bounds

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make("a", "b", "c", "d")

console.log(Chunk.getUnsafe(chunk, 1)) // "b"
console.log(Chunk.getUnsafe(chunk, 3)) // "d"

// Warning: This will throw an error for invalid indices
try {
  Chunk.getUnsafe(chunk, 10) // throws "Index out of bounds"
} catch (error) {
  console.log((error as Error).message) // "Index out of bounds"
}
```

**Signature**

```ts
declare const getUnsafe: { (index: number): <A>(self: Chunk<A>) => A; <A>(self: Chunk<A>, index: number): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L653)

Since v2.0.0