Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isInteger

Checks if a given `BigDecimal` is an integer.

**Example**

```ts
import * as assert from "node:assert"
import { isInteger, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(isInteger(unsafeFromString("0")), true)
assert.deepStrictEqual(isInteger(unsafeFromString("1")), true)
assert.deepStrictEqual(isInteger(unsafeFromString("1.1")), false)
```

**Signature**

```ts
declare const isInteger: (n: BigDecimal) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1072)

Since v2.0.0