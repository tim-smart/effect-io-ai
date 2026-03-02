Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.abs

Determines the absolute value of a given `BigDecimal`.

**Example**

```ts
import { abs, fromStringUnsafe } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(abs(fromStringUnsafe("-5")), fromStringUnsafe("5"))
assert.deepStrictEqual(abs(fromStringUnsafe("0")), fromStringUnsafe("0"))
assert.deepStrictEqual(abs(fromStringUnsafe("5")), fromStringUnsafe("5"))
```

**Signature**

```ts
declare const abs: (n: BigDecimal) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L827)

Since v2.0.0