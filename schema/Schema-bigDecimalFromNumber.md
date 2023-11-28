# bigDecimalFromNumber

A schema that transforms a `number` into a `BigDecimal`.
When encoding, this Schema will produce incorrect results if the BigDecimal exceeds the 64-bit range of a number.

To import and use `bigDecimalFromNumber` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.bigDecimalFromNumber
```

**Signature**

```ts
export declare const bigDecimalFromNumber: <I, A extends number>(self: Schema<I, A>) => Schema<I, BigDecimal.BigDecimal>
```
