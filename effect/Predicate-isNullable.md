# isNullable

A guard that succeeds when the input is `null` or `undefined`.

To import and use `isNullable` from the "Predicate" module:

ts
import \* as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isNullable
undefined

**Example**

```ts
import { isNullable } from "effect/Predicate"

assert.deepStrictEqual(isNullable(null), true)
assert.deepStrictEqual(isNullable(undefined), true)

assert.deepStrictEqual(isNullable({}), false)
assert.deepStrictEqual(isNullable([]), false)
```

**Signature**

```ts
export declare const isNullable: <A>(input: A) => input is Extract<A, null | undefined>
```
