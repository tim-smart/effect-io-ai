# OptionFromNonEmptyTrimmedString

Transforms strings into an Option type, effectively filtering out empty or
whitespace-only strings by trimming them and checking their length. Returns
`none` for invalid inputs and `some` for valid non-empty strings.

To import and use `OptionFromNonEmptyTrimmedString` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.OptionFromNonEmptyTrimmedString
```

**Example**

```ts
import { Schema } from "effect"

console.log(Schema.decodeSync(Schema.OptionFromNonEmptyTrimmedString)("")) // Option.none()
console.log(Schema.decodeSync(Schema.OptionFromNonEmptyTrimmedString)(" a ")) // Option.some("a")
console.log(Schema.decodeSync(Schema.OptionFromNonEmptyTrimmedString)("a")) // Option.some("a")
```

**Signature**

```ts
export declare const OptionFromNonEmptyTrimmedString: transform<
  typeof String$,
  OptionFromSelf<typeof NonEmptyTrimmedString>
>
```
