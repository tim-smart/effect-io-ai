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
console.log(result) // Option.some(Chunk.make(1, 20, 3, 4))

// Index out of bounds returns None
const outOfBounds = chunk.pipe(Chunk.modify(10, (n) => n * 10))
console.log(outOfBounds) // Option.none()

// Negative index returns None
const negative = chunk.pipe(Chunk.modify(-1, (n) => n * 10))
console.log(negative) // Option.none()
```

**Signature**

```ts
declare const modify: { <A, B>(i: number, f: (a: A) => B): (self: Chunk<A>) => O.Option<Chunk<A | B>>; <A, B>(self: Chunk<A>, i: number, f: (a: A) => B): O.Option<Chunk<A | B>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2361)

Since v2.0.0