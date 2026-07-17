Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.toNumberUnsafe

Converts a `BigDecimal` to a JavaScript `number`.

**When to use**

Use when you need a JavaScript number at an interop boundary where precision
loss is acceptable.

**Gotchas**

This conversion is unsafe because the result can lose integer or fractional
precision, round to a nearby representable value, or become `Infinity` when
the decimal cannot be represented as a finite JavaScript `number`.

**Example** (Converting decimals to numbers)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.toNumberUnsafe(BigDecimal.fromStringUnsafe("123.456")), 123.456)
```

**See**

- `format` for preserving decimal precision as text

**Signature**

```ts
declare const toNumberUnsafe: (n: BigDecimal) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1584)

Since v4.0.0