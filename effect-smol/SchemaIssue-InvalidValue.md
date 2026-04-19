Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.InvalidValue

Issue produced when the input has the correct type but its value violates a
constraint (e.g. a string that is too short, a number out of range).

When to use:

- Detect constraint violations from `Schema.filter`, `Schema.minLength`,
  `Schema.greaterThan`, etc.
- Create custom validation errors in `Schema.makeFilter` callbacks.

Behaviour:

- `actual` is `Option.some(value)` when the failing value is known, or
  `Option.none()` when absent.
- `annotations` optionally carries a `message` string for formatting.
- The default formatter renders this as `"Invalid data <actual>"` unless a
  custom `message` annotation is provided.

**Example** (Custom filter returning InvalidValue)

```ts
import { Option, SchemaIssue } from "effect"

const issue = new SchemaIssue.InvalidValue(
  Option.some(""),
  { message: "must not be empty" }
)
console.log(String(issue))
// "must not be empty"
```

**See**

- `InvalidType` — the input has the wrong type entirely
- `Filter` — composite wrapper when a schema filter produces this issue

**Signature**

```ts
declare class InvalidValue { constructor(
    /**
     * The value that caused the issue.
     */
    actual: Option.Option<unknown>,
    /**
     * The metadata for the issue.
     */
    annotations?: Schema.Annotations.Issue | undefined
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L614)

Since v4.0.0