Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.beginMutation

Creates a transient mutable `HashMap` for efficient batched updates.

**Details**

Apply updates to the returned map, then call `endMutation` to finish the
mutation window and use the result as an immutable `HashMap`.

**Example** (Beginning batch mutation)

```ts
import { HashMap } from "effect"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L772)

Since v2.0.0