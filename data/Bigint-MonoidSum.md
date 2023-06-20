# MonoidSum

`bigint` monoid under addition.

The `empty` value is `0n`.

To import and use `MonoidSum` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.MonoidSum
```

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
