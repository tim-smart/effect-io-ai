# isMap

Tests if a value is a `Map`.

To import and use `isMap` from the "Predicate" module:

ts
import \* as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isMap
undefined

**Example**

```ts
import { isMap } from "effect/Predicate"

assert.deepStrictEqual(isMap(new Map()), true)
assert.deepStrictEqual(isMap({}), false)
assert.deepStrictEqual(isMap(null), false)
assert.deepStrictEqual(isMap(undefined), false)
```

**Signature**

```ts
export declare const isMap: (input: unknown) => input is Map<unknown, unknown>
```
