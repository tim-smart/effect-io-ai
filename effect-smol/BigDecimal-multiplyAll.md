Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.multiplyAll

Takes an `Iterable` of `BigDecimal`s and returns their multiplication as a single `BigDecimal`.

**Example** (Multiplying multiple decimals)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  BigDecimal.multiplyAll([BigDecimal.fromStringUnsafe("2"), BigDecimal.fromStringUnsafe("3"), BigDecimal.fromStringUnsafe("4")]),
  BigDecimal.fromStringUnsafe("24")
)
```

**Signature**

```ts
declare const multiplyAll: (collection: Iterable<BigDecimal>) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L362)

Since v4.0.0