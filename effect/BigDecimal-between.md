Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.between

Checks if a `BigDecimal` is between a `minimum` and `maximum` value (inclusive).

**Example**

```ts
import * as assert from "node:assert"
import { BigDecimal } from "effect"

const between = BigDecimal.between({
  minimum: BigDecimal.unsafeFromString("1"),
  maximum: BigDecimal.unsafeFromString("5") }
)

assert.deepStrictEqual(between(BigDecimal.unsafeFromString("3")), true)
assert.deepStrictEqual(between(BigDecimal.unsafeFromString("0")), false)
assert.deepStrictEqual(between(BigDecimal.unsafeFromString("6")), false)
```

**Signature**

```ts
declare const between: { (options: { minimum: BigDecimal; maximum: BigDecimal; }): (self: BigDecimal) => boolean; (self: BigDecimal, options: { minimum: BigDecimal; maximum: BigDecimal; }): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L572)

Since v2.0.0