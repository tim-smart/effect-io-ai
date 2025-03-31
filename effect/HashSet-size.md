Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.size

Calculates the number of values in the `HashSet`.

Time complexity: **`O(1)`**

**Example**

```ts
import { HashSet, pipe } from "effect"
import assert from "node:assert/strict"

assert.deepStrictEqual(pipe(HashSet.empty(), HashSet.size), 0)

assert.deepStrictEqual(
  pipe(HashSet.make(1, 2, 2, 3, 4, 3), HashSet.size),
  4
)
```

**See**

- Other `HashSet` getters are `values` `toValues`

**Signature**

```ts
declare const size: <A>(self: HashSet<A>) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L1006)

Since v2.0.0