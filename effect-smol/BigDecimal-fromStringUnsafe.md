Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.fromStringUnsafe

Parses a decimal string into a `BigDecimal`, throwing if the string is
invalid.

Accepts the same syntax as `fromString`. Use `fromString` when invalid input
should be represented as `Option.none` instead of throwing.

**Example** (Parsing decimal strings unsafely)

```ts
import { fromStringUnsafe, make } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(fromStringUnsafe("123"), make(123n, 0))
assert.deepStrictEqual(fromStringUnsafe("123.456"), make(123456n, 3))
assert.throws(() => fromStringUnsafe("123.abc"))
```

**Signature**

```ts
declare const fromStringUnsafe: (s: string) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1243)

Since v2.0.0