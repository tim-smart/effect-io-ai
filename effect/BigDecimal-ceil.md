Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.ceil

Calculate the ceiling of a `BigDecimal` at the given scale.

**Example**

```ts
import * as assert from "node:assert"
import { ceil, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(ceil(unsafeFromString("145"), -1), unsafeFromString("150"))
assert.deepStrictEqual(ceil(unsafeFromString("-14.5")), unsafeFromString("-14"))
```

**Signature**

```ts
declare const ceil: { (scale: number): (self: BigDecimal) => BigDecimal; (self: BigDecimal, scale?: number): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1147)

Since v3.16.0