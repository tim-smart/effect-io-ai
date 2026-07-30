Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.round

Rounds a `BigDecimal` at the given scale with the specified rounding mode.

**Example**

```ts
import * as assert from "node:assert"
import { round, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(round(unsafeFromString("145"), { mode: "from-zero", scale: -1 }), unsafeFromString("150"))
assert.deepStrictEqual(round(unsafeFromString("-14.5")), unsafeFromString("-15"))
```

**Signature**

```ts
declare const round: { (options: { scale?: number; mode?: RoundingMode; }): (self: BigDecimal) => BigDecimal; (n: BigDecimal, options?: { scale?: number; mode?: RoundingMode; }): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1278)

Since v3.16.0