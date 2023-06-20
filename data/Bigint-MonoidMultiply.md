# MonoidMultiply

`bigint` monoid under multiplication.

The `empty` value is `1n`.

To import and use `MonoidMultiply` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.MonoidMultiply
```

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
