# isDate

A guard that succeeds when the input is a `Date`.

To import and use `isDate` from the "Predicate" module:

ts
import \* as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isDate
undefined

**Example**

```ts
import { isDate } from "effect/Predicate"

assert.deepStrictEqual(isDate(new Date()), true)

assert.deepStrictEqual(isDate(null), false)
assert.deepStrictEqual(isDate({}), false)
```

**Signature**

```ts
export declare const isDate: (input: unknown) => input is Date
```
