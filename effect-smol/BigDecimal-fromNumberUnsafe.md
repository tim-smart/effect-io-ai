Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.fromNumberUnsafe

Creates a `BigDecimal` from a `number` value.

**Gotchas**

It is not recommended to convert a floating point number to a decimal
directly, as the floating point representation may be unexpected. Throws a
`RangeError` if the number is not finite (`NaN`, `+Infinity` or `-Infinity`).

**Example** (Creating decimals from finite numbers)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.fromNumberUnsafe(123), BigDecimal.make(123n, 0))
assert.deepStrictEqual(BigDecimal.fromNumberUnsafe(123.456), BigDecimal.make(123456n, 3))
```

**Signature**

```ts
declare const fromNumberUnsafe: (n: number) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1124)

Since v4.0.0