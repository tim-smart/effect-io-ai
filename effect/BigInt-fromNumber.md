# fromNumber

Takes a number and returns an `Option` of `bigint`.

If the number is outside the safe integer range for JavaScript (`Number.MAX_SAFE_INTEGER`
and `Number.MIN_SAFE_INTEGER`), it returns `Option.none()`. Otherwise, it attempts to
convert the number to a `bigint` and returns `Option.some(bigint)`.

To import and use `fromNumber` from the "BigInt" module:

```ts
import * as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.fromNumber
```

**Example**

```ts
import { fromNumber } from "effect/BigInt"
import { Option } from "effect"

assert.deepStrictEqual(fromNumber(42), Option.some(BigInt(42)))
assert.deepStrictEqual(fromNumber(Number.MAX_SAFE_INTEGER + 1), Option.none())
assert.deepStrictEqual(fromNumber(Number.MIN_SAFE_INTEGER - 1), Option.none())
```

**Signature**

```ts
export declare const fromNumber: (n: number) => Option.Option<bigint>
```
