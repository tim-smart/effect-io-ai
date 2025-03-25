Package: `effect`<br />
Module: `Schema`<br />

## Schema.NonEmptyTrimmedString

Useful for validating strings that must contain meaningful characters without
leading or trailing whitespace.

**Example**

```ts
import { Schema } from "effect"

console.log(Schema.decodeOption(Schema.NonEmptyTrimmedString)("")) // Option.none()
console.log(Schema.decodeOption(Schema.NonEmptyTrimmedString)(" a ")) // Option.none()
console.log(Schema.decodeOption(Schema.NonEmptyTrimmedString)("a")) // Option.some("a")
```

**Signature**

```ts
declare class NonEmptyTrimmedString
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L4755)

Since v3.10.0