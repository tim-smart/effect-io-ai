# format

Formats a given `BigDecimal` as a `string`.

If the scale of the `BigDecimal` is greater than or equal to 16, the `BigDecimal` will
be formatted in scientific notation.

To import and use `format` from the "BigDecimal" module:

ts
import \* as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.format
undefined

**Example**

```ts
import { format, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(format(unsafeFromString("-5")), "-5")
assert.deepStrictEqual(format(unsafeFromString("123.456")), "123.456")
assert.deepStrictEqual(format(unsafeFromString("-0.00000123")), "-0.00000123")
```

**Signature**

```ts
export declare const format: (n: BigDecimal) => string
```
