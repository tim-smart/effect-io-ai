Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.toNumber

Takes a `bigint` and returns an `Option` of `number`.

If the `bigint` is outside the safe integer range for JavaScript (`Number.MAX_SAFE_INTEGER`
and `Number.MIN_SAFE_INTEGER`), it returns `Option.none()`. Otherwise, it converts the `bigint`
to a number and returns `Option.some(number)`.

**Example**

```ts
import * as assert from "node:assert"
import { BigInt as BI, Option } from "effect"

assert.deepStrictEqual(BI.toNumber(BigInt(42)), Option.some(42))
assert.deepStrictEqual(BI.toNumber(BigInt(Number.MAX_SAFE_INTEGER) + BigInt(1)), Option.none())
assert.deepStrictEqual(BI.toNumber(BigInt(Number.MIN_SAFE_INTEGER) - BigInt(1)), Option.none())
```

**Signature**

```ts
declare const toNumber: (b: bigint) => Option.Option<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L574)

Since v2.0.0