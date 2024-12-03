# NumberFromString

This schema transforms a `string` into a `number` by parsing the string using the `parse` function of the `effect/Number` module.

It returns an error if the value can't be converted (for example when non-numeric characters are provided).

The following special string values are supported: "NaN", "Infinity", "-Infinity".

To import and use `NumberFromString` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.NumberFromString
```
