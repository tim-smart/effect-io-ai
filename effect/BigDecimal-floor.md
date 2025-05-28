Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.floor

Calculate the floor of a `BigDecimal` at the given scale.

**Example**

```ts
import * as assert from "node:assert"
import { floor, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(floor(unsafeFromString("145"), -1), unsafeFromString("140"))
assert.deepStrictEqual(floor(unsafeFromString("-14.5")), unsafeFromString("-15"))
```

**Signature**

```ts
declare const floor: { (scale: number): (self: BigDecimal) => BigDecimal; (self: BigDecimal, scale?: number): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1175)

Since v3.16.0