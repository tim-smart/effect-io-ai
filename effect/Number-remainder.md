Package: `effect`<br />
Module: `Number`<br />

## Number.remainder

Returns the remainder left over when one operand is divided by a second
operand.

It always takes the sign of the dividend.

**Example**

```ts
import * as assert from "node:assert/strict"
import { remainder } from "effect/Number"

assert.equal(remainder(2, 2), 0)
assert.equal(remainder(3, 2), 1)
assert.equal(remainder(-4, 2), -0)
```

**Signature**

```ts
declare const remainder: { (divisor: number): (dividend: number) => number; (dividend: number, divisor: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L978)

Since v2.0.0