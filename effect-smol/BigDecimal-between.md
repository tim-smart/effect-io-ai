Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.between

Checks if a `BigDecimal` is between a `minimum` and `maximum` value (inclusive).

**Example**

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

const between = BigDecimal.between({
  minimum: BigDecimal.fromStringUnsafe("1"),
  maximum: BigDecimal.fromStringUnsafe("5")
})

assert.deepStrictEqual(between(BigDecimal.fromStringUnsafe("3")), true)
assert.deepStrictEqual(between(BigDecimal.fromStringUnsafe("0")), false)
assert.deepStrictEqual(between(BigDecimal.fromStringUnsafe("6")), false)
```

**Signature**

```ts
declare const between: { (options: { minimum: BigDecimal; maximum: BigDecimal; }): (self: BigDecimal) => boolean; (self: BigDecimal, options: { minimum: BigDecimal; maximum: BigDecimal; }): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L694)

Since v2.0.0