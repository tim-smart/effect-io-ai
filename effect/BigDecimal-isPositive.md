Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isPositive

Checks if a given `BigDecimal` is positive.

**Example**

```ts
import * as assert from "node:assert"
import { isPositive, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(isPositive(unsafeFromString("-1")), false)
assert.deepStrictEqual(isPositive(unsafeFromString("0")), false)
assert.deepStrictEqual(isPositive(unsafeFromString("1")), true)
```

**Signature**

```ts
declare const isPositive: (n: BigDecimal) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1125)

Since v2.0.0