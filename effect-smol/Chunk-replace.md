Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.replace

Change the element at the specified index, creating a new `Chunk`,
or returns `None` if the index is out of bounds.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make("a", "b", "c", "d")
const result = Chunk.replace(chunk, 1, "X")
console.log(result) // { _id: 'Chunk', values: [ 'a', 'X', 'c', 'd' ] }

// Index out of bounds returns None
const outOfBounds = chunk?.pipe(Chunk.replace(10, "Y"))
console.log(outOfBounds === undefined) // true

// Negative index returns None
const negative = chunk?.pipe(Chunk.replace(-1, "Z"))
console.log(negative === undefined) // true
```

**Signature**

```ts
declare const replace: { <B>(i: number, b: B): <A>(self: Chunk<A>) => Chunk<B | A> | undefined; <A, B>(self: Chunk<A>, i: number, b: B): Chunk<B | A> | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2395)

Since v2.0.0