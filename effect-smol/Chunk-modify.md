Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.modify

Applies a function to the element at the specified index, creating a new `Chunk`,
or returns `None` if the index is out of bounds.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4)
const result = Chunk.modify(chunk, 1, (n) => n * 10)
console.log(result) // { _id: 'Chunk', values: [ 1, 20, 3, 4 ] }

// Index out of bounds returns None
const outOfBounds = chunk?.pipe(Chunk.modify(10, (n) => n * 10))
console.log(outOfBounds === undefined) // true

// Negative index returns None
const negative = chunk?.pipe(Chunk.modify(-1, (n) => n * 10))
console.log(negative === undefined) // true
```

**Signature**

```ts
declare const modify: { <A, B>(i: number, f: (a: A) => B): (self: Chunk<A>) => Chunk<A | B> | undefined; <A, B>(self: Chunk<A>, i: number, f: (a: A) => B): Chunk<A | B> | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2362)

Since v2.0.0