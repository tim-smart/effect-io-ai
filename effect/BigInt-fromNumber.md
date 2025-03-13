Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.fromNumber

Takes a number and returns an `Option` of `bigint`.

If the number is outside the safe integer range for JavaScript (`Number.MAX_SAFE_INTEGER`
and `Number.MIN_SAFE_INTEGER`), it returns `Option.none()`. Otherwise, it attempts to
convert the number to a `bigint` and returns `Option.some(bigint)`.

**Example**

```ts
import * as assert from "node:assert"
import { BigInt as BI, Option } from "effect"

assert.deepStrictEqual(BI.fromNumber(42), Option.some(BigInt(42)))
assert.deepStrictEqual(BI.fromNumber(Number.MAX_SAFE_INTEGER + 1), Option.none())
assert.deepStrictEqual(BI.fromNumber(Number.MIN_SAFE_INTEGER - 1), Option.none())
```

**Signature**

```ts
declare const fromNumber: (n: number) => Option.Option<bigint>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L630)

Since v2.4.12