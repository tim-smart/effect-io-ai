# clampBigDecimal

Clamps a `BigDecimal` between a minimum and a maximum value.

To import and use `clampBigDecimal` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.clampBigDecimal
```

**Signature**

```ts
export declare const clampBigDecimal: (
  minimum: bigDecimal_.BigDecimal,
  maximum: bigDecimal_.BigDecimal
) => <R, I, A extends bigDecimal_.BigDecimal>(self: Schema<A, I, R>) => Schema<A, I, R>
```
