Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.sign

Determines the sign of a given `BigDecimal`.

**Example** (Reading decimal signs)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.sign(BigDecimal.fromStringUnsafe("-5")), -1)
assert.deepStrictEqual(BigDecimal.sign(BigDecimal.fromStringUnsafe("0")), 0)
assert.deepStrictEqual(BigDecimal.sign(BigDecimal.fromStringUnsafe("5")), 1)
```

**Signature**

```ts
declare const sign: (n: BigDecimal) => Ordering
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L895)

Since v2.0.0