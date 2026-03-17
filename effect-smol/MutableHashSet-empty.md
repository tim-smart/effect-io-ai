Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.empty

Creates an empty MutableHashSet.

**Example**

```ts
import { MutableHashSet } from "effect"

const set = MutableHashSet.empty<string>()

// Add some values
MutableHashSet.add(set, "apple")
MutableHashSet.add(set, "banana")
MutableHashSet.add(set, "apple") // Duplicate, no effect

console.log(MutableHashSet.size(set)) // 2
console.log(Array.from(set)) // ["apple", "banana"]
```

**Signature**

```ts
declare const empty: <K = never>() => MutableHashSet<K>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashSet.ts#L129)

Since v2.0.0