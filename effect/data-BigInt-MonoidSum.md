# MonoidSum

`bigint` monoid under addition.

The `empty` value is `0n`.

To import and use `MonoidSum` from the "BigInt" module:

ts
import \* as BigInt from "@effect/typeclass/data/BigInt"
// Can be accessed like this
BigInt.MonoidSum
undefined

**Example**

```ts
import { MonoidSum } from "@effect/typeclass/data/BigInt"

assert.deepStrictEqual(MonoidSum.combine(2n, 3n), 5n)
assert.deepStrictEqual(MonoidSum.combine(2n, MonoidSum.empty), 2n)
```

**Signature**

```ts
export declare const MonoidSum: monoid.Monoid<bigint>
```
