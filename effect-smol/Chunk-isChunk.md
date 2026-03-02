Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.isChunk

Checks if `u` is a `Chunk<unknown>`

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3)
const array = [1, 2, 3]

console.log(Chunk.isChunk(chunk)) // true
console.log(Chunk.isChunk(array)) // false
console.log(Chunk.isChunk("string")) // false
```

**Signature**

```ts
declare const isChunk: { <A>(u: Iterable<A>): u is Chunk<A>; (u: unknown): u is Chunk<unknown>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L335)

Since v2.0.0