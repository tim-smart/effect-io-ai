Package: `effect`<br />
Module: `index`<br />

## index.Chunk

Re-exports all named exports from the "./Chunk.ts" module as `Chunk`.

**Example**

```ts
import { Chunk } from "effect"

// Creating chunks
const chunk1 = Chunk.fromIterable([1, 2, 3])
const chunk2 = Chunk.fromIterable([4, 5, 6])
const empty = Chunk.empty<number>()

// Combining chunks
const combined = Chunk.appendAll(chunk1, chunk2)
console.log(Chunk.toReadonlyArray(combined)) // [1, 2, 3, 4, 5, 6]
```

**Example**

```ts
import { Chunk } from "effect"

// Functional transformations
const numbers = Chunk.range(1, 5) // [1, 2, 3, 4, 5]
const doubled = Chunk.map(numbers, (n) => n * 2) // [2, 4, 6, 8, 10]
const evens = Chunk.filter(doubled, (n) => n % 4 === 0) // [4, 8]
const sum = Chunk.reduce(evens, 0, (acc, n) => acc + n) // 12
```

**Example**

```ts
import { Chunk, Effect } from "effect"

// Working with Effects
const processChunk = (chunk: Chunk.Chunk<number>) =>
  Effect.gen(function*() {
    const mapped = Chunk.map(chunk, (n) => n * 2)
    const filtered = Chunk.filter(mapped, (n) => n > 5)
    return Chunk.toReadonlyArray(filtered)
  })
```

**Signature**

```ts
export * as Chunk from "./Chunk.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L384)

Since v2.0.0