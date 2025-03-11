## clamp

Restricts the given `BigDecimal` to be within the range specified by the `minimum` and `maximum` values.

- If the `BigDecimal` is less than the `minimum` value, the function returns the `minimum` value.
- If the `BigDecimal` is greater than the `maximum` value, the function returns the `maximum` value.
- Otherwise, it returns the original `BigDecimal`.

**Example**

```ts
import * as assert from "node:assert"
import { BigDecimal } from "effect"

const clamp = BigDecimal.clamp({
  minimum: BigDecimal.unsafeFromString("1"),
  maximum: BigDecimal.unsafeFromString("5") }
)

assert.deepStrictEqual(clamp(BigDecimal.unsafeFromString("3")), BigDecimal.unsafeFromString("3"))
assert.deepStrictEqual(clamp(BigDecimal.unsafeFromString("0")), BigDecimal.unsafeFromString("1"))
assert.deepStrictEqual(clamp(BigDecimal.unsafeFromString("6")), BigDecimal.unsafeFromString("5"))
```

**Signature**

```ts
declare const clamp: { (options: { minimum: BigDecimal; maximum: BigDecimal; }): (self: BigDecimal) => BigDecimal; (self: BigDecimal, options: { minimum: BigDecimal; maximum: BigDecimal; }): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L605)

Since v2.0.0