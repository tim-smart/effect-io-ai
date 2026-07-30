Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.size

Calculates the number of values in the `HashSet`.

Time complexity: **`O(1)`**

**Example**

```ts
import { MutableHashSet } from "effect"
import assert from "node:assert/strict"

assert.equal(MutableHashSet.size(MutableHashSet.empty()), 0)

assert.equal(
  MutableHashSet.size(MutableHashSet.make(1, 2, 2, 3, 4, 3)),
  4
)
```

**See**

- Other `MutableHashSet` elements are `module:MutableHashSet.add` `module:MutableHashSet.has` `module:MutableHashSet.remove` `module:MutableHashSet.clear`

**Signature**

```ts
declare const size: <V>(self: MutableHashSet<V>) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableHashSet.ts#L672)

Since v2.0.0