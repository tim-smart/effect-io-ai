Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.takeRight

Takes the last `n` elements.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5, 6)
const lastThree = Chunk.takeRight(chunk, 3)
console.log(Chunk.toArray(lastThree)) // [4, 5, 6]

// Take more than available
const all = Chunk.takeRight(chunk, 10)
console.log(Chunk.toArray(all)) // [1, 2, 3, 4, 5, 6]

// Take zero
const none = Chunk.takeRight(chunk, 0)
console.log(Chunk.toArray(none)) // []
```

**Signature**

```ts
declare const takeRight: { (n: number): <A>(self: Chunk<A>) => Chunk<A>; <A>(self: Chunk<A>, n: number): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2087)

Since v2.0.0