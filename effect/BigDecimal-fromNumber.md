# fromNumber

Creates a `BigDecimal` from a `number` value.

It is not recommended to convert a floating point number to a decimal directly,
as the floating point representation may be unexpected.

To import and use `fromNumber` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.fromNumber
```

**Example**

```ts
import { fromNumber, make } from "effect/BigDecimal"

assert.deepStrictEqual(fromNumber(123), make(123n, 0))
assert.deepStrictEqual(fromNumber(123.456), make(123456n, 3))
```

**Signature**

```ts
export declare const fromNumber: (n: number) => BigDecimal
```
