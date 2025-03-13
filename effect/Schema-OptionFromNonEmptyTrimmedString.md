Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromNonEmptyTrimmedString

Transforms strings into an Option type, effectively filtering out empty or
whitespace-only strings by trimming them and checking their length. Returns
`none` for invalid inputs and `some` for valid non-empty strings.

**Example**

```ts
import { Schema } from "effect"

console.log(Schema.decodeSync(Schema.OptionFromNonEmptyTrimmedString)("")) // Option.none()
console.log(Schema.decodeSync(Schema.OptionFromNonEmptyTrimmedString)(" a ")) // Option.some("a")
console.log(Schema.decodeSync(Schema.OptionFromNonEmptyTrimmedString)("a")) // Option.some("a")
```

**Signature**

```ts
declare class OptionFromNonEmptyTrimmedString
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7271)

Since v3.10.0