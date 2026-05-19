Package: `effect`<br />
Module: `Number`<br />

## Number.remainder

Returns the remainder left over when one operand is divided by a second operand.

It always takes the sign of the dividend.

**Example** (Calculating remainders)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.remainder(2, 2), 0)
assert.deepStrictEqual(Number.remainder(3, 2), 1)
assert.deepStrictEqual(Number.remainder(-4, 2), -0)
```

**Signature**

```ts
declare const remainder: { (divisor: number): (self: number) => number; (self: number, divisor: number): number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L516)

Since v2.0.0