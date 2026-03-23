Package: `effect`<br />
Module: `Schema`<br />

## Schema.asserts

Creates an assertion function that throws an error if the input doesn't match
the schema.

This function is useful for runtime type checking with TypeScript's `asserts`
type guard. It narrows the type of the input if the assertion succeeds, or
throws an error if it fails.

**Example** (Basic Usage)

```ts
import { Schema } from "effect"

const assertString: (u: unknown) => asserts u is string = Schema.asserts(
  Schema.String
)

// This will pass silently (no return value)
try {
  assertString("hello")
  console.log("String assertion passed")
} catch (error) {
  console.log("String assertion failed")
}

// This will throw an error
try {
  assertString(123)
} catch (error) {
  console.log("Non-string assertion failed as expected")
}
```

**Signature**

```ts
declare const asserts: <T>(schema: Schema<T>) => <I>(input: I) => asserts input is I & T
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1114)

Since v4.0.0