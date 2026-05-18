Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.fromString

Safely parses a decimal string into a `BigDecimal`.

Returns `Option.some` for valid decimal or exponent notation and
`Option.none` when the string cannot be parsed or would produce an unsafe
scale. The empty string parses as zero.

**Example** (Parsing decimal strings safely)

```ts
import { BigDecimal, Option } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.fromString("123"), Option.some(BigDecimal.make(123n, 0)))
assert.deepStrictEqual(
  BigDecimal.fromString("123.456"),
  Option.some(BigDecimal.make(123456n, 3))
)
assert.deepStrictEqual(BigDecimal.fromString("123.abc"), Option.none())
```

**Signature**

```ts
declare const fromString: (s: string) => Option.Option<BigDecimal>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1177)

Since v2.0.0