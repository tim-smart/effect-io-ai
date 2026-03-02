Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.endMutation

Marks the `HashMap` as immutable, completing the mutation cycle.

**Example**

```ts
import * as HashMap from "effect/HashMap"

// Start with an existing map
const original = HashMap.make(["x", 10], ["y", 20])

// Begin mutation for batch operations
const mutable = HashMap.beginMutation(original)

// Perform multiple efficient operations
HashMap.set(mutable, "z", 30)
HashMap.remove(mutable, "x")
HashMap.set(mutable, "w", 40)

// End mutation to get final immutable result
const final = HashMap.endMutation(mutable)

console.log(HashMap.size(final)) // 3
console.log(HashMap.has(final, "x")) // false
console.log(HashMap.get(final, "z")) // Option.some(30)
```

**Signature**

```ts
declare const endMutation: <K, V>(self: HashMap<K, V>) => HashMap<K, V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L702)

Since v2.0.0