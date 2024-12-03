# ValidDateFromSelf

Defines a schema that ensures only valid dates are accepted. This schema
rejects values like `new Date("Invalid Date")`, which, despite being a `Date`
instance, represents an invalid date. Such stringent validation ensures that
all date objects processed through this schema are properly formed and
represent real dates.

To import and use `ValidDateFromSelf` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.ValidDateFromSelf
```
