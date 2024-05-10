# DateFromNumber

Represents a schema that converts a `number` into a (potentially invalid) `Date` (e.g., `NaN`, `Infinity` and `-Infinity` are not rejected).
Encoding will return `NaN` for invalid dates.

To import and use `DateFromNumber` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.DateFromNumber
```
