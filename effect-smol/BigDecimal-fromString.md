Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.fromString

Parses a numerical `string` into a `BigDecimal`.

**Example**

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.fromString("123"), BigDecimal.make(123n, 0))
assert.deepStrictEqual(
  BigDecimal.fromString("123.456"),
  BigDecimal.make(123456n, 3)
)
assert.deepStrictEqual(BigDecimal.fromString("123.abc"), undefined)
```

**Signature**

```ts
declare const fromString: (s: string) => BigDecimal | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1088)

Since v2.0.0