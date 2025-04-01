Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.endMutation

Makes the `HashSet` immutable again.

After calling `endMutation`, operations like `add` and `remove`
will create new instances of the `HashSet` instead of modifying the existing
one.

**Example**

```ts
import { HashSet } from "effect"
import assert from "node:assert/strict"

// Create a mutable set
const mutableSet = HashSet.beginMutation(HashSet.empty<number>())

// Add some elements to the mutable set
HashSet.add(mutableSet, 1)
HashSet.add(mutableSet, 2)

// Before endMutation, operations modify the set in place
const sameSet = HashSet.add(mutableSet, 3)
assert(Object.is(mutableSet, sameSet)) // true - same object reference
assert.deepStrictEqual(HashSet.toValues(mutableSet).sort(), [1, 2, 3])

// Make the set immutable again
const immutableSet = HashSet.endMutation(mutableSet)

// endMutation returns the same set instance, now made immutable
assert(Object.is(mutableSet, immutableSet)) // true - same object reference

// After endMutation, operations create new instances
const newSet = HashSet.add(immutableSet, 4)
assert(!Object.is(immutableSet, newSet)) // false - different object references

// The original set remains unchanged
assert.deepStrictEqual(HashSet.toValues(immutableSet).sort(), [1, 2, 3])

// The new set contains the added element
assert.deepStrictEqual(HashSet.toValues(newSet).sort(), [1, 2, 3, 4])
```

**See**

- Other `HashSet` mutations are `module:HashSet.add` `module:HashSet.remove` `module:HashSet.toggle` `module:HashSet.beginMutation` `module:HashSet.mutate`

**Signature**

```ts
declare const endMutation: <A>(self: HashSet<A>) => HashSet<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L1116)

Since v2.0.0