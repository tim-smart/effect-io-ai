Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.sum

Provides an addition operation on `BigDecimal`s.

**Example**

```ts
import * as assert from "node:assert"
import { sum, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(sum(unsafeFromString("2"), unsafeFromString("3")), unsafeFromString("5"))
```

**Signature**

```ts
declare const sum: { (that: BigDecimal): (self: BigDecimal) => BigDecimal; (self: BigDecimal, that: BigDecimal): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L210)

Since v2.0.0