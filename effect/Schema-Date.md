# Date

This schema converts a `string` into a `Date` object using the `new Date`
constructor. It ensures that only valid date strings are accepted,
rejecting any strings that would result in an invalid date, such as `new
Date("Invalid Date")`.

To import and use `Date` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.Date
```
