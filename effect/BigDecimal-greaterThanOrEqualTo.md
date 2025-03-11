## greaterThanOrEqualTo

Checks if a given `BigDecimal` is greater than or equal to the provided one.

**Example**

```ts
import * as assert from "node:assert"
import { greaterThanOrEqualTo, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(greaterThanOrEqualTo(unsafeFromString("2"), unsafeFromString("3")), false)
assert.deepStrictEqual(greaterThanOrEqualTo(unsafeFromString("3"), unsafeFromString("3")), true)
assert.deepStrictEqual(greaterThanOrEqualTo(unsafeFromString("4"), unsafeFromString("3")), true)
```

**Signature**

```ts
declare const greaterThanOrEqualTo: { (that: BigDecimal): (self: BigDecimal) => boolean; (self: BigDecimal, that: BigDecimal): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L543)

Since v2.0.0