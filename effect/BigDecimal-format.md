# format

Formats a given `BigDecimal` as a `string`.

To import and use `format` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.format
```

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
