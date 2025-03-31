Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.beginMutation

Creates a new mutable version of the `HashSet`

When a `HashSet` is mutable, operations like `add` and `remove`
modify the data structure in place instead of creating a new one, which is
more efficient when performing multiple operations.

**Example**

```ts
import { HashSet } from "effect"
import assert from "node:assert/strict"

const UPPER_BOUND = 10_000

const immutableSet = HashSet.empty<number>().pipe(HashSet.add(0))

// Create a mutable version of the immutableSet
const mutableSet = HashSet.beginMutation(immutableSet)

for (let i = 1; i < UPPER_BOUND; i++) {
  // Operations now modify the set in place instead of creating new instances
  // This is more efficient when making multiple changes
  const pointerToMutableSet = HashSet.add(mutableSet, i)

  // the two sets have the same identity, hence `add` is mutating mutableSet and not returning a new HashSet instance
  assert(Object.is(mutableSet, pointerToMutableSet))
  assert.equal(HashSet.has(mutableSet, i), true) // `i` is in the mutableSet
  assert.equal(HashSet.has(immutableSet, i), false) // `i` is not in the immutableSet
}

const next = UPPER_BOUND + 1
// When done, mark the set as immutable again
HashSet.endMutation(mutableSet).pipe(
  HashSet.add(next) // since this returns a new HashSet, it will not be logged as part of the mutableSet
)
assert.equal(HashSet.has(mutableSet, next), false)

console.log(HashSet.toValues(immutableSet)) // [0]
console.log(HashSet.toValues(mutableSet).sort((a, b) => a - b)) // [0, 1, 2, 3, ...rest]
```

**See**

- Other `HashSet` mutations are `add` `remove` `toggle` `endMutation` `mutate`

**Signature**

```ts
declare const beginMutation: <A>(self: HashSet<A>) => HashSet<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L1054)

Since v2.0.0