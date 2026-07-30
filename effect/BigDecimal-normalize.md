Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.normalize

Normalizes a given `BigDecimal` by removing trailing zeros.

**Example**

```ts
import * as assert from "node:assert"
import { normalize, make, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(normalize(unsafeFromString("123.00000")), normalize(make(123n, 0)))
assert.deepStrictEqual(normalize(unsafeFromString("12300000")), normalize(make(123n, -5)))
```

**Signature**

```ts
declare const normalize: (self: BigDecimal) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L146)

Since v2.0.0