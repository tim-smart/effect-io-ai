Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.join

Joins the elements together with "sep" in the middle.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make("apple", "banana", "cherry")
const result = Chunk.join(chunk, ", ")
console.log(result) // "apple, banana, cherry"

// With different separator
const withPipe = Chunk.join(chunk, " | ")
console.log(withPipe) // "apple | banana | cherry"

// Empty chunk
const empty = Chunk.empty<string>()
console.log(Chunk.join(empty, ", ")) // ""

// Single element
const single = Chunk.make("hello")
console.log(Chunk.join(single, ", ")) // "hello"
```

**Signature**

```ts
declare const join: { (sep: string): (self: Chunk<string>) => string; (self: Chunk<string>, sep: string): string; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2727)

Since v2.0.0