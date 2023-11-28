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
  minimum: BigDecimal.BigDecimal,
  maximum: BigDecimal.BigDecimal
) => <I, A extends BigDecimal.BigDecimal>(self: Schema<I, A>) => Schema<I, A>
```
