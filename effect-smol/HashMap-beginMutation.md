Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.beginMutation

Marks the `HashMap` as mutable for performance optimization during batch operations.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map = HashMap.make(["a", 1])

// Begin mutation for efficient batch operations
const mutable = HashMap.beginMutation(map)

// Multiple operations are now more efficient
HashMap.set(mutable, "b", 2)
HashMap.set(mutable, "c", 3)
HashMap.remove(mutable, "a")

// End mutation to get final immutable result
const result = HashMap.endMutation(mutable)
console.log(HashMap.size(result)) // 2
```

**Signature**

```ts
declare const beginMutation: <K, V>(self: HashMap<K, V>) => HashMap<K, V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L671)

Since v2.0.0