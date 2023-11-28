# bigDecimalFromString

A schema that transforms a `string` into a `BigDecimal`.

To import and use `bigDecimalFromString` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.bigDecimalFromString
```

**Signature**

```ts
export declare const bigDecimalFromString: <I, A extends string>(self: Schema<I, A>) => Schema<I, BigDecimal.BigDecimal>
```
