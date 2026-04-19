Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.InvalidType

Issue produced when the runtime type of the input does not match the type
expected by the schema (e.g. got `null` when `string` was expected).

When to use:

- Detect basic type mismatches (wrong primitive, null where object expected,
  etc.).
- The most common leaf issue in typical validation failures.

Behaviour:

- `ast` is the schema node that expected a different type.
- `actual` is `Option.some(value)` when the input was present, or
  `Option.none()` when no value was provided.
- The default formatter renders this as `"Expected <type>, got <actual>"`.

**Example** (Formatted output)

```ts
import { Schema } from "effect"

try {
  Schema.decodeUnknownSync(Schema.String)(42)
} catch (e) {
  if (Schema.isSchemaError(e)) {
    console.log(String(e.issue))
    // "Expected string, got 42"
  }
}
```

**See**

- `InvalidValue` — the input has the right type but fails a value constraint

**Signature**

```ts
declare class InvalidType { constructor(
    /**
     * The schema that caused the issue.
     */
    ast: AST.AST,
    /**
     * The input value that caused the issue.
     */
    actual: Option.Option<unknown>
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L550)

Since v4.0.0