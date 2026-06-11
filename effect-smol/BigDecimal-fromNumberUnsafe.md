Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.fromNumberUnsafe

Creates a `BigDecimal` from a finite `number`.

**When to use**

Use when you need to convert a trusted finite JavaScript number to a
`BigDecimal` and want a plain result instead of an `Option`.

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

**See**

- `fromNumber` for returning `Option.none` when the number is not finite

**Signature**

```ts
declare const fromNumberUnsafe: (n: number) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1290)

Since v4.0.0