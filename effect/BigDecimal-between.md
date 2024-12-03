# between

Checks if a `BigDecimal` is between a `minimum` and `maximum` value (inclusive).

To import and use `between` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.between
```

**Example**

```ts
import { BigDecimal } from "effect"

const between = BigDecimal.between({
  minimum: BigDecimal.unsafeFromString("1"),
  maximum: BigDecimal.unsafeFromString("5")
})

assert.deepStrictEqual(between(BigDecimal.unsafeFromString("3")), true)
assert.deepStrictEqual(between(BigDecimal.unsafeFromString("0")), false)
assert.deepStrictEqual(between(BigDecimal.unsafeFromString("6")), false)
```

**Signature**

```ts
export declare const between: {
  (options: { minimum: BigDecimal; maximum: BigDecimal }): (self: BigDecimal) => boolean
  (self: BigDecimal, options: { minimum: BigDecimal; maximum: BigDecimal }): boolean
}
```
