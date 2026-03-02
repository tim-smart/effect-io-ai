Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.size

Returns the number of unique values in the MutableHashSet.

**Example**

```ts
import { MutableHashSet } from "effect"

const set = MutableHashSet.empty<string>()
console.log(MutableHashSet.size(set)) // 0

MutableHashSet.add(set, "apple")
MutableHashSet.add(set, "banana")
MutableHashSet.add(set, "apple") // Duplicate
console.log(MutableHashSet.size(set)) // 2

MutableHashSet.remove(set, "apple")
console.log(MutableHashSet.size(set)) // 1

MutableHashSet.clear(set)
console.log(MutableHashSet.size(set)) // 0
```

**Signature**

```ts
declare const size: <V>(self: MutableHashSet<V>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashSet.ts#L314)

Since v2.0.0