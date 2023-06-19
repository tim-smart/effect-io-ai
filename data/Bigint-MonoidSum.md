# MonoidSum

`bigint` monoid under addition.

The `empty` value is `0n`.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { MonoidSum } from '@effect/data/Bigint'

assert.deepStrictEqual(MonoidSum.combine(2n, 3n), 5n)
assert.deepStrictEqual(MonoidSum.combine(2n, MonoidSum.empty), 2n)
```

**Signature**

```ts
export declare const MonoidSum: monoid.Monoid<bigint>
```
