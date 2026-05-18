Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.toNumberUnsafe

Converts a `BigDecimal` to a JavaScript `number`.

This conversion is unsafe because the result can lose integer or fractional
precision, round to a nearby representable value, or become `Infinity` when
the decimal cannot be represented as a finite JavaScript `number`.

**Example** (Converting decimals to numbers)

```ts
import { fromStringUnsafe, toNumberUnsafe } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(toNumberUnsafe(fromStringUnsafe("123.456")), 123.456)
```

**Signature**

```ts
declare const toNumberUnsafe: (n: BigDecimal) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1352)

Since v2.0.0