## remainder

Returns the remainder left over when one operand is divided by a second operand.

It always takes the sign of the dividend.

**Example**

```ts
import * as assert from "node:assert"
import { remainder } from "effect/Number"

assert.deepStrictEqual(remainder(2, 2), 0)
assert.deepStrictEqual(remainder(3, 2), 1)
assert.deepStrictEqual(remainder(-4, 2), -0)
```

**Signature**

```ts
declare const remainder: { (divisor: number): (self: number) => number; (self: number, divisor: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L442)

Since v2.0.0