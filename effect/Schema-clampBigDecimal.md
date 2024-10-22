# clampBigDecimal

Clamps a `BigDecimal` between a minimum and a maximum value.

To import and use `clampBigDecimal` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.clampBigDecimal
```

**Signature**

```ts
export declare const clampBigDecimal: (
  minimum: bigDecimal_.BigDecimal,
  maximum: bigDecimal_.BigDecimal
) => <A extends bigDecimal_.BigDecimal, I, R>(self: Schema<A, I, R>) => transform<Schema<A, I, R>, filter<Schema<A>>>
```
