# toNumber

Takes a `bigint` and returns an `Option` of `number`.

If the `bigint` is outside the safe integer range for JavaScript (`Number.MAX_SAFE_INTEGER`
and `Number.MIN_SAFE_INTEGER`), it returns `Option.none()`. Otherwise, it converts the `bigint`
to a number and returns `Option.some(number)`.

To import and use `toNumber` from the "BigInt" module:

```ts
import * as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.toNumber
```

**Example**

```ts
import { toNumber } from "effect/BigInt"
import { Option } from "effect"

assert.deepStrictEqual(toNumber(BigInt(42)), Option.some(42))
assert.deepStrictEqual(toNumber(BigInt(Number.MAX_SAFE_INTEGER) + BigInt(1)), Option.none())
assert.deepStrictEqual(toNumber(BigInt(Number.MIN_SAFE_INTEGER) - BigInt(1)), Option.none())
```

**Signature**

```ts
export declare const toNumber: (b: bigint) => Option.Option<number>
```
