# isNotNullable

A guard that succeeds when the input is not `null` or `undefined`.

To import and use `isNotNullable` from the "Predicate" module:

ts
import \* as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isNotNullable
undefined

**Example**

```ts
import { isNotNullable } from "effect/Predicate"

assert.deepStrictEqual(isNotNullable({}), true)
assert.deepStrictEqual(isNotNullable([]), true)

assert.deepStrictEqual(isNotNullable(null), false)
assert.deepStrictEqual(isNotNullable(undefined), false)
```

**Signature**

```ts
export declare const isNotNullable: <A>(input: A) => input is NonNullable<A>
```
