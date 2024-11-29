# BigDecimalFromNumber

A schema that transforms a `number` into a `BigDecimal`.
When encoding, this Schema will produce incorrect results if the BigDecimal exceeds the 64-bit range of a number.

To import and use `BigDecimalFromNumber` from the "Schema" module:

ts
import \* as Schema from "effect/Schema"
// Can be accessed like this
Schema.BigDecimalFromNumber
undefined
