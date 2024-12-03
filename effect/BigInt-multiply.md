# multiply

Provides a multiplication operation on `bigint`s.

To import and use `multiply` from the "BigInt" module:

```ts
import * as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.multiply
```

**Example**

```ts
import { multiply } from "effect/BigInt"

assert.deepStrictEqual(multiply(2n, 3n), 6n)
```

**Signature**

```ts
export declare const multiply: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
