# scale

Scales a given `BigDecimal` to the specified scale.

If the given scale is smaller than the current scale, the value will be rounded down to
the nearest integer.

To import and use `scale` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.scale
```

**Signature**

```ts
export declare const scale: (self: BigDecimal, scale: number) => BigDecimal
```
