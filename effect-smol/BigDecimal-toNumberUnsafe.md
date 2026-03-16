Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.toNumberUnsafe

Converts a `BigDecimal` to a `number`.

This function will produce incorrect results if the `BigDecimal` exceeds the 64-bit range of a `number`.

**Example**

```ts
import { fromStringUnsafe, toNumberUnsafe } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(toNumberUnsafe(fromStringUnsafe("123.456")), 123.456)
```

**Signature**

```ts
declare const toNumberUnsafe: (n: BigDecimal) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1251)

Since v2.0.0