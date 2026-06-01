Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.Forbidden

Represents a schema issue produced when a forbidden operation is encountered during parsing,
such as an asynchronous Effect running inside `Schema.decodeUnknownSync`.

**When to use**

Use when you need to detect that a schema requires async execution but was run
synchronously.

**Details**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L670)

Since v3.10.0