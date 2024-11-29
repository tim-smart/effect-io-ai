# MonoidMultiply

`bigint` monoid under multiplication.

The `empty` value is `1n`.

To import and use `MonoidMultiply` from the "BigInt" module:

ts
import \* as BigInt from "@effect/typeclass/data/BigInt"
// Can be accessed like this
BigInt.MonoidMultiply
undefined

**Example**

```ts
import { MonoidMultiply } from "@effect/typeclass/data/BigInt"

assert.deepStrictEqual(MonoidMultiply.combine(2n, 3n), 6n)
assert.deepStrictEqual(MonoidMultiply.combine(2n, MonoidMultiply.empty), 2n)
```

**Signature**

```ts
export declare const MonoidMultiply: monoid.Monoid<bigint>
```
