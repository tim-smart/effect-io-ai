Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.fromArrayUnsafe

Wraps an array into a chunk without copying, unsafe on mutable arrays

**Example**

```ts
import { Chunk } from "effect"

const array = [1, 2, 3, 4, 5]
const chunk = Chunk.fromArrayUnsafe(array)
console.log(Chunk.toArray(chunk)) // [1, 2, 3, 4, 5]

// Warning: Since this doesn't copy the array, mutations affect the chunk
array[0] = 999
console.log(Chunk.toArray(chunk)) // [999, 2, 3, 4, 5]
```

**Signature**

```ts
declare const fromArrayUnsafe: <A>(self: ReadonlyArray<A>) => Chunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L604)

Since v2.0.0