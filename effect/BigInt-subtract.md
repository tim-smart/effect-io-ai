# subtract

Provides a subtraction operation on `bigint`s.

To import and use `subtract` from the "BigInt" module:

```ts
import * as BigInt from 'effect/BigInt'

// Can be accessed like this
BigInt.subtract
```

**Example**

```ts
import { subtract } from 'effect/BigInt'

assert.deepStrictEqual(subtract(2n, 3n), -1n)
```

**Signature**

```ts
export declare const subtract: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
