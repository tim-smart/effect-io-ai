# min

Returns the minimum between two `bigint`s.

To import and use `min` from the "BigInt" module:

```ts
import * as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.min
```

**Example**

```ts
import { min } from "effect/BigInt"

assert.deepStrictEqual(min(2n, 3n), 2n)
```

**Signature**

```ts
export declare const min: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
