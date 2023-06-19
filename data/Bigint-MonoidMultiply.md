# MonoidMultiply

`bigint` monoid under multiplication.

The `empty` value is `1n`.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { MonoidMultiply } from '@effect/data/Bigint'

assert.deepStrictEqual(MonoidMultiply.combine(2n, 3n), 6n)
assert.deepStrictEqual(MonoidMultiply.combine(2n, MonoidMultiply.empty), 2n)
```

**Signature**

```ts
export declare const MonoidMultiply: monoid.Monoid<bigint>
```
