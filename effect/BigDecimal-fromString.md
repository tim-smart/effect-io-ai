Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.fromString

Parses a decimal string into a `BigDecimal` safely.

**When to use**

Use to parse external decimal text without throwing on invalid input.

**Details**

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

**See**

- `fromStringUnsafe` for parsing that throws on invalid input
- `fromNumber` for converting finite JavaScript numbers

**Signature**

```ts
declare const fromString: (s: string) => Option.Option<BigDecimal>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1378)

Since v2.0.0