Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.floor

Calculate the floor of a `BigDecimal` at the given scale.

**Example**

```ts
import { floor, fromStringUnsafe } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  floor(fromStringUnsafe("145"), -1),
  fromStringUnsafe("140")
)
assert.deepStrictEqual(
  floor(fromStringUnsafe("-14.5")),
  fromStringUnsafe("-15")
)
```

**Signature**

```ts
declare const floor: { (scale: number): (self: BigDecimal) => BigDecimal; (self: BigDecimal, scale?: number): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1584)

Since v4.0.0