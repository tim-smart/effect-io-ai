# NonEmptyTrimmedString

Useful for validating strings that must contain meaningful characters without
leading or trailing whitespace.

To import and use `NonEmptyTrimmedString` from the "Schema" module:

ts
import \* as Schema from "effect/Schema"
// Can be accessed like this
Schema.NonEmptyTrimmedString
undefined

**Example**

```ts
import { Schema } from "effect"

console.log(Schema.decodeOption(Schema.NonEmptyTrimmedString)("")) // Option.none()
console.log(Schema.decodeOption(Schema.NonEmptyTrimmedString)(" a ")) // Option.none()
console.log(Schema.decodeOption(Schema.NonEmptyTrimmedString)("a")) // Option.some("a")
```
