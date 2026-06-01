Package: `effect`<br />
Module: `Schema`<br />

## Schema.asserts

Creates an assertion function that throws an error if the input doesn't match
the schema.

**When to use**

Use to validate unknown input at runtime while narrowing the value with a
TypeScript assertion signature.

**Details**

The input is narrowed if the assertion succeeds. If validation fails, the
assertion throws.

**Example** (Basic Usage)

```ts
import { Schema } from "effect"

const input: unknown = "hello"

// This will pass silently (no return value) and narrow input to string
Schema.asserts(Schema.String, input)
console.log(input.toUpperCase())

// This will throw an error
try {
  const invalid: unknown = 123
  Schema.asserts(Schema.String, invalid)
} catch (error) {
  console.log("Non-string assertion failed as expected")
}
```

**Signature**

```ts
declare const asserts: <S extends Top, I>(schema: S, input: I) => asserts input is I & S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1228)

Since v4.0.0