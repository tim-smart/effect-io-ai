# toExponential

Formats a given `BigDecimal` as a `string` in scientific notation.

To import and use `toExponential` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.toExponential
```

**Example**

```ts
import { toExponential, make } from "effect/BigDecimal"

assert.deepStrictEqual(toExponential(make(123456n, -5)), "1.23456e+10")
```

**Signature**

```ts
export declare const toExponential: (n: BigDecimal) => string
```
