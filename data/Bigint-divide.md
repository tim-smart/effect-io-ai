# divide

Provides a division operation on `bigint`s.

If the dividend is not a multiple of the divisor the result will be a `bigint` value
which represents the integer division rounded down to the nearest integer.

To import and use `divide` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.divide
```

**Example**

```ts
import { divide } from '@effect/data/Bigint'

assert.deepStrictEqual(divide(6n, 3n), 2n)
assert.deepStrictEqual(divide(6n, 4n), 1n)
```

**Signature**

```ts
export declare const divide: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
