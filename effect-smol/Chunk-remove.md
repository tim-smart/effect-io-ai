Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.remove

Delete the element at the specified index, creating a new `Chunk`.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make("a", "b", "c", "d")
const result = Chunk.remove(chunk, 1)
console.log(Chunk.toArray(result)) // ["a", "c", "d"]

// Remove first element
const removeFirst = Chunk.remove(chunk, 0)
console.log(Chunk.toArray(removeFirst)) // ["b", "c", "d"]

// Index out of bounds returns same chunk
const outOfBounds = Chunk.remove(chunk, 10)
console.log(Chunk.toArray(outOfBounds)) // ["a", "b", "c", "d"]
```

**Signature**

```ts
declare const remove: { (i: number): <A>(self: Chunk<A>) => Chunk<A>; <A>(self: Chunk<A>, i: number): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2329)

Since v2.0.0