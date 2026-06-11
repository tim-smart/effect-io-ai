Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.fromNumber

Creates a `BigDecimal` safely from a finite `number`.

**When to use**

Use to convert a finite JavaScript number to a `BigDecimal` without throwing
on invalid input.

**Details**

Returns `Option.none()` for `NaN`, `+Infinity` or `-Infinity`.

**Gotchas**

It is not recommended to convert a floating point number to a decimal
directly, as the floating point representation may be unexpected.

**Example** (Creating decimals from numbers safely)

```ts
import { BigDecimal, Option } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.fromNumber(123), Option.some(BigDecimal.make(123n, 0)))
assert.deepStrictEqual(
  BigDecimal.fromNumber(123.456),
  Option.some(BigDecimal.make(123456n, 3))
)
assert.deepStrictEqual(BigDecimal.fromNumber(Infinity), Option.none())
```

**See**

- `fromNumberUnsafe` for throwing when the number is not finite
- `fromString` for parsing decimal strings directly

**Signature**

```ts
declare const fromNumber: (n: number) => Option.Option<BigDecimal>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1331)

Since v2.0.0