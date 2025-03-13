Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isZero

Checks if a given `BigDecimal` is `0`.

**Example**

```ts
import * as assert from "node:assert"
import { isZero, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(isZero(unsafeFromString("0")), true)
assert.deepStrictEqual(isZero(unsafeFromString("1")), false)
```

**Signature**

```ts
declare const isZero: (n: BigDecimal) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1089)

Since v2.0.0