Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.containsWith

Returns a function that checks if a `Chunk` contains a given value using a provided `isEquivalent` function.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make({ id: 1, name: "Alice" }, { id: 2, name: "Bob" })

// Custom equivalence by id
const containsById = Chunk.containsWith<{ id: number; name: string }>((a, b) =>
  a.id === b.id
)
console.log(containsById(chunk, { id: 1, name: "Different" })) // true
console.log(containsById(chunk, { id: 3, name: "Charlie" })) // false

// Case-insensitive string comparison
const words = Chunk.make("Apple", "Banana", "Cherry")
const containsCaseInsensitive = Chunk.containsWith<string>((a, b) =>
  a.toLowerCase() === b.toLowerCase()
)
console.log(containsCaseInsensitive(words, "apple")) // true
console.log(containsCaseInsensitive(words, "grape")) // false
```

**Signature**

```ts
declare const containsWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (a: A): (self: Chunk<A>) => boolean; (self: Chunk<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2501)

Since v2.0.0