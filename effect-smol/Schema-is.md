Package: `effect`<br />
Module: `Schema`<br />

## Schema.is

Creates a type guard function that checks if a value conforms to a given
schema.

This function returns a predicate that performs a type-safe check, narrowing
the type of the input value if the check passes. It's particularly useful for
runtime type validation and TypeScript type narrowing.

**Example** (Basic Type Guard)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1076)

Since v4.0.0