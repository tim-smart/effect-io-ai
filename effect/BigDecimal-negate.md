Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.negate

Provides a negate operation on `BigDecimal`s.

**When to use**

Use to flip the sign of a `BigDecimal`.

**Example** (Negating decimals)

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(BigDecimal.negate(BigDecimal.fromStringUnsafe("3")), BigDecimal.fromStringUnsafe("-3"))
assert.deepStrictEqual(BigDecimal.negate(BigDecimal.fromStringUnsafe("-6")), BigDecimal.fromStringUnsafe("6"))
```

**Signature**

```ts
declare const negate: (n: BigDecimal) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1057)

Since v2.0.0