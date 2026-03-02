Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.sortWith

Sorts the elements of a Chunk based on a projection function.

**Example**

```ts
import { Chunk } from "effect"
import * as Order from "effect/Order"

const people = Chunk.make(
  { name: "Alice", age: 30 },
  { name: "Bob", age: 25 },
  { name: "Charlie", age: 35 }
)

// Sort by age
const byAge = Chunk.sortWith(people, (person) => person.age, Order.Number)
console.log(Chunk.toArray(byAge))
// [{ name: "Bob", age: 25 }, { name: "Alice", age: 30 }, { name: "Charlie", age: 35 }]

// Sort by name
const byName = Chunk.sortWith(people, (person) => person.name, Order.String)
console.log(Chunk.toArray(byName))
// [{ name: "Alice", age: 30 }, { name: "Bob", age: 25 }, { name: "Charlie", age: 35 }]

// Sort by string length
const words = Chunk.make("a", "abc", "ab")
const byLength = Chunk.sortWith(words, (word) => word.length, Order.Number)
console.log(Chunk.toArray(byLength)) // ["a", "ab", "abc"]
```

**Signature**

```ts
declare const sortWith: { <A, B>(f: (a: A) => B, order: Order.Order<B>): (self: Chunk<A>) => Chunk<A>; <A, B>(self: Chunk<A>, f: (a: A) => B, order: Order.Order<B>): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1871)

Since v2.0.0