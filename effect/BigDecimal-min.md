## min

Returns the minimum between two `BigDecimal`s.

**Example**

```ts
import * as assert from "node:assert"
import { min, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(min(unsafeFromString("2"), unsafeFromString("3")), unsafeFromString("2"))
```

**Signature**

```ts
declare const min: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L630)

Since v2.0.0