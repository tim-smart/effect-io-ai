# BigIntFromNumber

This schema transforms a `number` into a `bigint` by parsing the number using the `BigInt` function.

It returns an error if the value can't be safely encoded as a `number` due to being out of range.

To import and use `BigIntFromNumber` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.BigIntFromNumber
```
