## unsafeToNumber

Converts a `BigDecimal` to a `number`.

This function will produce incorrect results if the `BigDecimal` exceeds the 64-bit range of a `number`.

**Example**

```ts
import * as assert from "node:assert"
import { unsafeToNumber, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(unsafeToNumber(unsafeFromString("123.456")), 123.456)
```

**Signature**

```ts
declare const unsafeToNumber: (n: BigDecimal) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1054)

Since v2.0.0