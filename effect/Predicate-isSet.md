# isSet

Tests if a value is a `Set`.

To import and use `isSet` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isSet
```

**Example**

```ts
import { isSet } from "effect/Predicate"

assert.deepStrictEqual(isSet(new Set([1, 2])), true)
assert.deepStrictEqual(isSet(new Set()), true)
assert.deepStrictEqual(isSet({}), false)
assert.deepStrictEqual(isSet(null), false)
assert.deepStrictEqual(isSet(undefined), false)
```

**Signature**

```ts
export declare const isSet: (input: unknown) => input is Set<unknown>
```
