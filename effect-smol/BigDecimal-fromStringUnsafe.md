Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.fromStringUnsafe

Parses a decimal string into a `BigDecimal`, throwing if the string is
invalid.

**Details**

Accepts the same syntax as `fromString`. Use `fromString` when invalid input
should be represented as `Option.none` instead of throwing.

**Example** (Parsing decimal strings unsafely)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.fromStringUnsafe("123"), BigDecimal.make(123n, 0))
assert.deepStrictEqual(BigDecimal.fromStringUnsafe("123.456"), BigDecimal.make(123456n, 3))
assert.throws(() => BigDecimal.fromStringUnsafe("123.abc"))
```

**Signature**

```ts
declare const fromStringUnsafe: (s: string) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1265)

Since v4.0.0