Package: `effect`<br />
Module: `Schema`<br />

## Schema.is

Creates a type guard function that checks if a value conforms to a given
schema.

**Details**

This function returns a predicate that performs a type-safe check, narrowing
the type of the input value if the check passes. The predicate returns `false`
for schema mismatches.

**Gotchas**

Only causes made entirely of schema issues are converted to `false`. Causes
that contain defects, interruptions, or other non-schema reasons throw
instead.

**Example** (Defining a basic type guard)

```ts
import { Schema } from "effect"

const isString = Schema.is(Schema.String)

console.log(isString("hello")) // true
console.log(isString(42)) // false

// Type narrowing in action
const value: unknown = "hello"
if (isString(value)) {
  // value is now typed as string
  console.log(value.toUpperCase()) // "HELLO"
}
```

**Signature**

```ts
declare const is: <T>(schema: Schema<T>) => <I>(input: I) => input is I & T
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1256)

Since v3.10.0