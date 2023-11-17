# toString

Formats a given `BigDecimal` as a `string`.

To import and use `toString` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.toString
```

**Example**

```ts
import { toString, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(toString(unsafeFromString("-5")), "-5")
assert.deepStrictEqual(toString(unsafeFromString("123.456")), "123.456")
assert.deepStrictEqual(toString(unsafeFromString("-0.00000123")), "-0.00000123")
```

**Signature**

```ts
export declare const toString: (n: BigDecimal) => string
```
