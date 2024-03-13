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
  minimum: _bigDecimal.BigDecimal,
  maximum: _bigDecimal.BigDecimal
) => <R, I, A extends _bigDecimal.BigDecimal>(self: Schema<A, I, R>) => Schema<A, I, R>
```
