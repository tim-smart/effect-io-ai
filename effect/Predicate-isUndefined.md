# isUndefined

Tests if a value is `undefined`.

To import and use `isUndefined` from the "Predicate" module:

ts
import \* as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isUndefined
undefined

**Example**

```ts
import { isUndefined } from "effect/Predicate"

assert.deepStrictEqual(isUndefined(undefined), true)

assert.deepStrictEqual(isUndefined(null), false)
assert.deepStrictEqual(isUndefined("undefined"), false)
```

**Signature**

```ts
export declare const isUndefined: (input: unknown) => input is undefined
```
