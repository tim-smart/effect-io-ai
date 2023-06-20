# subtract

Provides a subtraction operation on `bigint`s.

To import and use `subtract` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.subtract
```

**Example**

```ts
import { subtract } from '@effect/data/Bigint'

assert.deepStrictEqual(subtract(2n, 3n), -1n)
```

**Signature**

```ts
export declare const subtract: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
