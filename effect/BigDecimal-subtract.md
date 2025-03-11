## subtract

Provides a subtraction operation on `BigDecimal`s.

**Example**

```ts
import * as assert from "node:assert"
import { subtract, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(subtract(unsafeFromString("2"), unsafeFromString("3")), unsafeFromString("-1"))
```

**Signature**

```ts
declare const subtract: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L272)

Since v2.0.0