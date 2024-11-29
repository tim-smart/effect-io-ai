# isNotUndefined

Tests if a value is not `undefined`.

To import and use `isNotUndefined` from the "Predicate" module:

ts
import \* as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isNotUndefined
undefined

**Example**

```ts
import { isNotUndefined } from "effect/Predicate"

assert.deepStrictEqual(isNotUndefined(null), true)
assert.deepStrictEqual(isNotUndefined("undefined"), true)

assert.deepStrictEqual(isNotUndefined(undefined), false)
```

**Signature**

```ts
export declare const isNotUndefined: <A>(input: A) => input is Exclude<A, undefined>
```
