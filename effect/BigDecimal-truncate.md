Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.truncate

Truncate a `BigDecimal` at the given scale. This is the same operation as rounding away from zero.

**Example**

```ts
import * as assert from "node:assert"
import { truncate, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(truncate(unsafeFromString("145"), -1), unsafeFromString("140"))
assert.deepStrictEqual(truncate(unsafeFromString("-14.5")), unsafeFromString("-14"))
```

**Signature**

```ts
declare const truncate: { (scale: number): (self: BigDecimal) => BigDecimal; (self: BigDecimal, scale?: number): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1203)

Since v3.16.0