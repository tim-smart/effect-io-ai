# MonoidSum

`number` monoid under addition.

The `empty` value is `0`.

To import and use `MonoidSum` from the "Number" module:

ts
import \* as Number from "@effect/typeclass/data/Number"
// Can be accessed like this
Number.MonoidSum
undefined

**Example**

```ts
import { MonoidSum } from "@effect/typeclass/data/Number"

assert.deepStrictEqual(MonoidSum.combine(2, 3), 5)
assert.deepStrictEqual(MonoidSum.combine(2, MonoidSum.empty), 2)
```

**Signature**

```ts
export declare const MonoidSum: monoid.Monoid<number>
```
