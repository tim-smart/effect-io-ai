Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.multiply

Provides a multiplication operation on `BigDecimal`s.

**Example**

```ts
import * as assert from "node:assert"
import { multiply, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(multiply(unsafeFromString("2"), unsafeFromString("3")), unsafeFromString("6"))
```

**Signature**

```ts
declare const multiply: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L250)

Since v2.0.0