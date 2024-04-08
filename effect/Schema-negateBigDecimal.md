# negateBigDecimal

Negates a `BigDecimal`.

To import and use `negateBigDecimal` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.negateBigDecimal
```

**Signature**

```ts
export declare const negateBigDecimal: <R, I, A extends bigDecimal_.BigDecimal>(
  self: Schema<A, I, R>
) => Schema<A, I, R>
```
