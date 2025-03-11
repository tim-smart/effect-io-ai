## isNegative

Checks if a given `BigDecimal` is negative.

**Example**

```ts
import * as assert from "node:assert"
import { isNegative, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(isNegative(unsafeFromString("-1")), true)
assert.deepStrictEqual(isNegative(unsafeFromString("0")), false)
assert.deepStrictEqual(isNegative(unsafeFromString("1")), false)
```

**Signature**

```ts
declare const isNegative: (n: BigDecimal) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1107)

Since v2.0.0