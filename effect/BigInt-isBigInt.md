# isBigInt

Tests if a value is a `bigint`.

To import and use `isBigInt` from the "BigInt" module:

```ts
import * as BigInt from 'effect/BigInt'

// Can be accessed like this
BigInt.isBigInt
```

**Example**

```ts
import { isBigInt } from 'effect/BigInt'

assert.deepStrictEqual(isBigInt(1n), true)
assert.deepStrictEqual(isBigInt(1), false)
```

**Signature**

```ts
export declare const isBigInt: (u: unknown) => u is bigint
```
