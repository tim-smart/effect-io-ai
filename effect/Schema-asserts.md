Package: `effect`<br />
Module: `Schema`<br />

## Schema.asserts

Creates an assertion function that throws an error if the input does not match
the schema.

**When to use**

Use to validate unknown input at runtime while narrowing the value with a
TypeScript assertion signature.

**Details**

The input is narrowed if the assertion succeeds. If schema validation fails,
the assertion throws an `Error` whose cause is `SchemaIssue.Issue`.

**Gotchas**

Causes that contain defects, interruptions, or other non-schema reasons throw
with the underlying `Cause` attached instead of being converted to schema
validation errors.

**Example** (Asserting and narrowing an input)

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
declare const asserts: <S extends Constraint, I>(schema: S, input: I) => asserts input is I & S["Type"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L1344)

Since v4.0.0