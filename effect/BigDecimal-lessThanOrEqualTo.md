Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.lessThanOrEqualTo

Checks if a given `BigDecimal` is less than or equal to the provided one.

**Example**

```ts
import * as assert from "node:assert"
import { lessThanOrEqualTo, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(lessThanOrEqualTo(unsafeFromString("2"), unsafeFromString("3")), true)
assert.deepStrictEqual(lessThanOrEqualTo(unsafeFromString("3"), unsafeFromString("3")), true)
assert.deepStrictEqual(lessThanOrEqualTo(unsafeFromString("4"), unsafeFromString("3")), false)
```

**Signature**

```ts
declare const lessThanOrEqualTo: { (that: BigDecimal): (self: BigDecimal) => boolean; (self: BigDecimal, that: BigDecimal): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L501)

Since v2.0.0