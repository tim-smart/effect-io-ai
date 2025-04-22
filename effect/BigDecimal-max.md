Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.max

Returns the maximum between two `BigDecimal`s.

**Example**

```ts
import * as assert from "node:assert"
import { max, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(max(unsafeFromString("2"), unsafeFromString("3")), unsafeFromString("3"))
```

**Signature**

```ts
declare const max: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L652)

Since v2.0.0