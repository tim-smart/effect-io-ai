Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.Forbidden

Issue produced when a forbidden operation is encountered during parsing,
such as an asynchronous Effect running inside `Schema.decodeUnknownSync`.

When to use:

- Detect that a schema requires async execution but was run synchronously.
- Provide custom error messages via the `annotations.message` field.

Behaviour:

- `actual` is `Option.some(value)` when the input is known, or
  `Option.none()` when absent.
- `annotations` optionally carries a `message` string.
- The default formatter renders this as `"Forbidden operation"`.

**Example** (Creating a Forbidden issue)

```ts
import { Option, SchemaIssue } from "effect"

const issue = new SchemaIssue.Forbidden(
  Option.none(),
  { message: "async operation not allowed in sync context" }
)
console.log(String(issue))
// "async operation not allowed in sync context"
```

**See**

- `InvalidValue` — for value-constraint failures (not operation failures)

**Signature**

```ts
declare class Forbidden { constructor(
    /**
     * The input value that caused the issue.
     */
    actual: Option.Option<unknown>,
    /**
     * The metadata for the issue.
     */
    annotations: Schema.Annotations.Issue | undefined
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L675)

Since v4.0.0