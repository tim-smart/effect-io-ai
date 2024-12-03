# DateFromNumber

Defines a schema that converts a `number` into a `Date` object using the `new
Date` constructor. This schema does not validate the numerical input,
allowing potentially invalid values such as `NaN`, `Infinity`, and
`-Infinity` to be converted into `Date` objects. During the encoding process,
any invalid `Date` object will be encoded to `NaN`.

To import and use `DateFromNumber` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.DateFromNumber
```
