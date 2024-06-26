# DateFromSelf

Describes a schema that accommodates potentially invalid `Date` instances,
such as `new Date("Invalid Date")`, without rejection.

To import and use `DateFromSelf` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.DateFromSelf
```
