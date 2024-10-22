# DateFromString

Defines a schema that attempts to convert a `string` to a `Date` object using
the `new Date` constructor. This conversion is lenient, meaning it does not
reject strings that do not form valid dates (e.g., using `new Date("Invalid
Date")` results in a `Date` object, despite being invalid).

To import and use `DateFromString` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.DateFromString
```
