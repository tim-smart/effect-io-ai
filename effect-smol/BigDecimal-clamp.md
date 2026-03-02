Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.clamp

Restricts the given `BigDecimal` to be within the range specified by the `minimum` and `maximum` values.

- If the `BigDecimal` is less than the `minimum` value, the function returns the `minimum` value.
- If the `BigDecimal` is greater than the `maximum` value, the function returns the `maximum` value.
- Otherwise, it returns the original `BigDecimal`.

**Example**

```ts
import { BigDecimal } from "effect"
import * as assert from "node:assert"

const clamp = BigDecimal.clamp({
  minimum: BigDecimal.fromStringUnsafe("1"),
  maximum: BigDecimal.fromStringUnsafe("5")
})

assert.deepStrictEqual(
  clamp(BigDecimal.fromStringUnsafe("3")),
  BigDecimal.fromStringUnsafe("3")
)
assert.deepStrictEqual(
  clamp(BigDecimal.fromStringUnsafe("0")),
  BigDecimal.fromStringUnsafe("1")
)
assert.deepStrictEqual(
  clamp(BigDecimal.fromStringUnsafe("6")),
  BigDecimal.fromStringUnsafe("5")
)
```

**Signature**

```ts
declare const clamp: { (options: { minimum: BigDecimal; maximum: BigDecimal; }): (self: BigDecimal) => BigDecimal; (self: BigDecimal, options: { minimum: BigDecimal; maximum: BigDecimal; }): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L738)

Since v2.0.0